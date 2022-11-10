local QBCore = exports['qb-core']:GetCoreObject()

--- Inventory / storage 
RegisterNetEvent("gdn-illegaljob:storage1", function()
    if QBCore.Functions.GetPlayerData().job.name =='gallery' and QBCore.Functions.GetPlayerData().job.onduty then
        TriggerEvent("inventory:client:SetCurrentStash", "storage1")
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "storage1", {
            maxweight = 9000000,
            slots = 50,
        })
    end
end)
RegisterNetEvent("gdn-illegaljob:tray1", function()
    if QBCore.Functions.GetPlayerData().job.name =='gallery' and QBCore.Functions.GetPlayerData().job.onduty then
        TriggerEvent("inventory:client:SetCurrentStash", "tray1")
        TriggerServerEvent("inventory:server:OpenInventory", "stash", "tray1", {
            maxweight = 1000000,
            slots = 10,
        })
    end
end)
---/// PolyZones for locations
Citizen.CreateThread(function()
    if QBCore.Functions.GetPlayerData().job.name =='gallery' and QBCore.Functions.GetPlayerData().job.onduty then
        exports['qb-target']:AddBoxZone("selltable", vector3(316.72, -587.51, 43.29), 2, 1, {
            name="selltable",
            heading= 272,
            --debugPoly=true,
            minZ= 39.89,
            maxZ= 43.89,
        }, {
            options = {
                {
                    event = "qb-gallery:Menu",
                    icon = "fas fa-gem",
                    label = "Gallery Appraiser Sell Table",
                },
            },
            job = {"all"},
            distance = 2.0
        })
        exports['qb-target']:AddBoxZone("Storage", vector3(-1534.45, -396.88, 35.63), 3, 1, {
            name="storage",
            heading= 320,
            --debugPoly=true,
            minZ= 32.83,
            maxZ= 36.83,
        }, {
            options = {
                {
                    event = "gdn-illegaljob:storage1",
                    icon = "fas fa-chair",
                    label = "Gallery Storage",
                },
            },
            job = {"all"},
            distance = 2.0
        })
        exports['qb-target']:AddBoxZone("duty", vector3(313.95, -587.52, 43.29), 1, 1, {
            name="duty",
            heading= 335,
            --debugPoly=true,
            --minZ= 32.23,
            --maxZ= 36.23,
        }, {
            options = {
                {
                    event = "qb-gallery:Duty",
                    icon = "fas fa-clipboard",
                    label = "Clock in & off duty",
                },
            },
            job = {"all"},
            distance = 2.0
        })
        exports['qb-target']:AddBoxZone("tray", vector3(-1529.25, -402.75, 35.64), 0.8, 0.8, {
            name="tray",
            heading= 321,
            --debugPoly=true,
            minZ= 32.24,
            maxZ= 36.24,
        }, {
            options = {
                {
                    event = "gdn-illegaljob:tray1",
                    icon = "fas fa-tray",
                    label = "Tray1",
                },
            },
            job = {"all"},
            distance = 1.5
        })
        exports['qb-target']:AddBoxZone("crafting", vector3(-1531.32, -400.45, 35.63), 1.5, 1, {
            name="crafting",
            heading= 318,
            --debugPoly=true,
            minZ= 32.83,
            maxZ= 36.83,
        }, {
            options = {
                {
                    event = "gdn-illegaljob:ringmenu",
                    icon = "fas fa-tray",
                    label = "Crafting Table",
                },
            },
            job = {"all"},
            distance = 1.5
        })
    end
end)
---/// Gallery Menu
RegisterNetEvent('qb-gallery:Menu', function(data)
    local number = data.number
    exports['qb-menu']:openMenu({
        {
            header = "Gallery Sell Table",
            isMenuHeader = true
        },
        {
            header = "Gallery Menu",
            txt = "click to Open Gallery menu",
            params = {
                event = "Gem:Sell",
                args = {
                    message = "Look at this"
                }
            }
        },
    })
end)
---//// On duty Fuction Menu
RegisterNetEvent('qb-gallery:Duty', function(data)
    local number = data.number
    exports['qb-menu']:openMenu({
        {
            header = "Clock in & Clock Out",
            isMenuHeader = true
        },
        {
            header = "On Duty & Off Duty",
            txt = "Gallery clock in",
            params = {
                event = "qb-gallery:DutyB",
                args = {
                    message = "duty"
                }
            }
        },
    })
end)
---/// Gem Selling Menu
RegisterNetEvent('Gem:Sell', function()
    if QBCore.Functions.GetPlayerData().job.name =='gallery' and QBCore.Functions.GetPlayerData().job.onduty then
        exports['qb-menu']:openMenu({
            {
                header = "Gallery Sell Table",
                isMenuHeader = true
            },
            {
                header = "<img src= https://hosting.photobucket.com/images/ss47/monlf/gemstone(1).png width=25> Diamond",
                txt = "D",
                params = {
                    event = "gdn-illegaljob:client:Diamonds",
                }
            },
            { 
                header = "<img src= https://hosting.photobucket.com/images/ss47/monlf/gemstone(1).png width=25> Sapphire",
                txt = "S",
                params = {
                    event = "gdn-illegaljob:client:sapp",
                }
            },
            {
                header = "<img src= https://hosting.photobucket.com/images/ss47/monlf/gemstone(1).png width=25> Emerald",
                txt = "E",
                params = {
                    event = "gdn-illegaljob:client:emerald",
                }
            },
            {
                header = "<img src= https://hosting.photobucket.com/images/ss47/monlf/gemstone(1).png width=25> Ruby",
                txt = "R",
                params = {
                    event = "gdn-illegaljob:client:rubby",
                }
            },
            {
                header = "<img src= https://hosting.photobucket.com/images/ss47/monlf/gemstone(1).png width=25> Opal",
                txt = "O",
                params = {
                    event = "gdn-illegaljob:client:opal",
                }
            },
            {
                header = "<img src= https://hosting.photobucket.com/images/ss47/monlf/gemstone(1).png width=25> Pink-Diamond",
                txt = "PD",
                params = {
                    event = "gdn-illegaljob:pink",
                }
            },
            {
                header = "<img src= https://hosting.photobucket.com/images/ss47/monlf/gemstone(1).png width=25> Black-Diamond",
                txt = "BD",
                params = {
                    event = "gdn-illegaljob:client:blacDiamond",
                }
            },
            {
                header = "<img src= https://hosting.photobucket.com/images/ss47/monlf/8ct-gold-chain.png width=25> 10ct-Gold-chain",
                txt = "10ct",
                params = {
                    event = "gdn-illegaljob:client:10kgoldchains",
                }
            },
            {
                header = "<img src= https://hosting.photobucket.com/images/ss47/monlf/np_rolex-watch.png width=25> Rolex",
                txt = "Gold Rolex",
                params = {
                    event = "gdn-illegaljob:client:rolexx",
                }
            },
            {
                header = "<img src= https://hosting.photobucket.com/images/ss47/monlf/5ct-gold-chain.png width=25> Gold Chain",
                txt = "Gold Chain",
                params = {
                    event = "gdn-illegaljob:client:goldchain",

                }
            },
            {
                header = "< Go Back",
                txt = "Back to main Menu",
                params = {
                    event = "qb-gallery:Menu",
                    args = {
                        message = "Click me to go back"
                    }
                }
            },
        })
    end
end)

RegisterNetEvent('gdn-illegaljob:ringmenu', function(data)

    exports['qb-menu']:openMenu({
        {
           header = "💍 Ring Crafting Menu",
           isMenuHeader = true,
        },
        {
            header = "💍 Ring Buffs",
            txt = "Ring Crafting Bench with Buffs",
            params = {
                event = "gdn-illegaljob:ringmenu1", 
                args = {
                    number = 0,
               }
           }
        },
    })
end)
RegisterNetEvent('gdn-illegaljob:ringmenu1', function(data)
    if QBCore.Functions.GetPlayerData().job.name =='gallery' and QBCore.Functions.GetPlayerData().job.onduty then
        exports['qb-menu']:openMenu({
            {
               header = "💎 Enchanted Rings Table",
               isMenuHeader = true,
            },
            {
                header = "<img src= https://i.postimg.cc/1XMvydHB/ruby-ring.png width=25> Ruby Ring",
                txt = "50 MetalScrap, 125 Steel, 200 rubber",
                params = {
                    event = "gdn-illegaljob:ruby_ring", 
                }
            },
            {
                header = "<img src= https://i.postimg.cc/8cwPLxMx/tanzanitering.png width=25> Tanzan Ring",
                 txt = "50 MetalScrap, 125 Steel, 200 rubber",
                params = {
                    event = "gdn-illegaljob:tanzan_ring", 
                }
            },
            {
                header = "<img src= https://i.postimg.cc/MHzs2wyX/sapphire-ring.png width=25> Sapphire Ring",
                txt = "50 MetalScrap, 125 Steel, 200 rubber",
                params = {
                    event = "gdn-illegaljob:sapp_ring", 
                }
            },
            {
                header = "<img src= https://i.postimg.cc/655HM9Wm/onyx-ring.png width=25> Onyx Ring",
                txt = "50 MetalScrap, 125 Steel, 200 rubber",
                params = {
                    event = "gdn-illegaljob:onxyrr_ring", 
                }
            },
            {
                header = "<img src= https://i.postimg.cc/05CWG6sS/jade-ring.png width=25> Jade Ring",
                txt = "50 MetalScrap, 125 Steel, 200 rubber",
                params = {
                    event = "gdn-illegaljob:jader_ring", 
                }
            },        {
                header = "<img src= https://i.postimg.cc/bwZmj320/diamond-ring.png width=25> Diamond Ring",
                txt = "50 MetalScrap, 125 Steel, 200 rubber",
                params = {
                    event = "gdn-illegaljob:diamondd_ring", 
                }
            },        {
                header = "<img src= https://i.postimg.cc/nhN0VBvy/citrine-ring.png width=25> Citrine Ring",
                txt = "50 MetalScrap, 125 Steel, 200 rubber",
                params = {
                    event = "gdn-illegaljob:citrine_ring", 
                }
            },
            {
                header = "<img src= https://i.postimg.cc/yYQL5wWY/aquamarine-ring.png width=25> Aquamarine Ring",
                txt = "50 MetalScrap, 125 Steel, 200 rubber",
                params = {
                    event = "gdn-illegaljob:aquamariner_ring", 
                }
            },
            {
                header = "❌ Main Menu",
                txt = "",
               params = {
                    event = "gdn-illegaljob:ringmenu",
                    args = {
                        number = 9,
                    }
                }
            },
        })
    end
end) 
---///// Input Menu for selling

RegisterNetEvent('gdn-illegaljob:client:10kgoldchains', function()   ---- 10k Gold chain
    local input = exports['qb-input']:ShowInput({
        header = "Sell Menu",
        submitText = "Sell",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'amount to Sold'
            }
        }
    })
    if input then
        if not input.amount then return end
		local sellitem = tonumber(input.amount)
        TriggerEvent("gdn-illegaljob:client:10k", sellitem)
    end
end)

RegisterNetEvent('gdn-illegaljob:client:Diamonds', function()    ------- Diamond
    local input = exports['qb-input']:ShowInput({
        header = "Sell Menu",
        submitText = "Sell",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'amount to Sold'
            }
        }
    })
    if input then
        if not input.amount then return end
		local sellitem = tonumber(input.amount)
        TriggerEvent("gdn-illegaljob:client:diamond", sellitem)
    end
end)

RegisterNetEvent('gdn-illegaljob:client:sapp', function()         -------- Sapphire
    local input = exports['qb-input']:ShowInput({
        header = "Sell Menu",
        submitText = "Sell",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'amount to Sold'
            }
        }
    })
    if input then
        if not input.amount then return end
		local sellitem = tonumber(input.amount)
        TriggerEvent("gdn-illegaljob:client:sapph", sellitem)
    end
end)

RegisterNetEvent('gdn-illegaljob:client:emerald', function()     --------- Emerald
    local input = exports['qb-input']:ShowInput({
        header = "Sell Menu",
        submitText = "Sell",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'amount to Sold'
            }
        }
    })
    if input then
        if not input.amount then return end
		local sellitem = tonumber(input.amount)
        TriggerEvent("gdn-illegaljob:client:emeraldss", sellitem)
    end
end)

RegisterNetEvent('gdn-illegaljob:client:rubby', function()     ---------------- Ruby
    local input = exports['qb-input']:ShowInput({
        header = "Sell Menu",
        submitText = "Sell",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'amount to Sold'
            }
        }
    })
    if input then
        if not input.amount then return end
		local sellitem = tonumber(input.amount)
        TriggerEvent("gdn-illegaljob:client:ruby", sellitem)
    end
end)

RegisterNetEvent('gdn-illegaljob:client:opal', function()   ------------ Opal
    local input = exports['qb-input']:ShowInput({
        header = "Sell Menu",
        submitText = "Sell",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'amount to Sold'
            }
        }
    })
    if input then
        if not input.amount then return end
		local sellitem = tonumber(input.amount)
        TriggerEvent("gdn-illegaljob:client:opals", sellitem)
    end
end)

RegisterNetEvent('gdn-illegaljob:pink', function()    --------- Pink Diamond
    local input = exports['qb-input']:ShowInput({
        header = "Sell Menu",
        submitText = "Sell",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'amount to Sold'
            }
        }
    })
    if input then
        if not input.amount then return end
		local sellitem = tonumber(input.amount)
        TriggerEvent("gdn-illegaljob:client:pinkD", sellitem)
    end
end)

RegisterNetEvent('gdn-illegaljob:client:blacDiamond', function()  -------- Black Diamond
    local input = exports['qb-input']:ShowInput({
        header = "Sell Menu",
        submitText = "Sell",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'amount to Sold'
            }
        }
    })
    if input then
        if not input.amount then return end
		local sellitem = tonumber(input.amount)
        TriggerEvent("gdn-illegaljob:client:blackD", sellitem)
    end
end)

RegisterNetEvent('gdn-illegaljob:client:goldchain', function()  -------- Gold Chain
    local input = exports['qb-input']:ShowInput({
        header = "Sell Menu",
        submitText = "Sell",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'amount to Sold'
            }
        }
    })
    if input then
        if not input.amount then return end
		local sellitem = tonumber(input.amount)
        TriggerEvent("gdn-illegaljob:client:client:gold", sellitem)
    end
end)
RegisterNetEvent('gdn-illegaljob:client:rolexx', function()  -------- Rolex
    local input = exports['qb-input']:ShowInput({
        header = "Sell Menu",
        submitText = "Sell",
        inputs = {
            {
                type = 'number',
                isRequired = true,
                name = 'amount',
                text = 'amount to Sold'
            }
        }
    })
    if input then
        if not input.amount then return end
		local sellitem = tonumber(input.amount)
        TriggerEvent("ggdn-illegaljob:client:selling:rolex", sellitem)
    end
end)

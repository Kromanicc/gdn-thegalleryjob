local QBCore = exports['qb-core']:GetCoreObject()

--// Watches serverside
RegisterNetEvent("gdn-illegaljob:sellrolex", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hasItem = nil
    for k, v in pairs(Config.Watches) do
        local name = v.itemName
        local money = math.random(v.MinSellPrice,v.MaxSellPrice)
        if Player.Functions.GetItemByName(name) ~= nil then
            hasItem = true
            local amt = Player.Functions.GetItemByName(name).amount
            local pay = money * amt
            Player.Functions.AddMoney('cash', pay)
            Player.Functions.RemoveItem(name, amt)
        end
    end
    if hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'You have Sold Some Watches', 'success')
    end
    if not hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'you dont have anything to sell', 'error')
    end 
end)
---// chain Serverside
RegisterNetEvent("gdn-illegaljob:Goldchain", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hasItem = nil
    for k, v in pairs(Config.Chain) do
        local name = v.itemName
        local money = math.random(v.MinSellPrice,v.MaxSellPrice)
        if Player.Functions.GetItemByName(name) ~= nil then
            hasItem = true
            local amt = Player.Functions.GetItemByName(name).amount
            local pay = money * amt
            Player.Functions.AddMoney('cash', pay)
            Player.Functions.RemoveItem(name, amt)
        end
    end
    if hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'You have Sold Some Gold Chains', 'success')
    end
    if not hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'you dont have anything to sell', 'error')
    end 
end)
---/// Gem ServerSide
RegisterNetEvent("gdn-illegaljob:10kGoldchain", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hasItem = nil
    for k, v in pairs(Config.tenkgoldchain) do
        local name = v.itemName
        local money = math.random(v.MinSellPrice,v.MaxSellPrice)
        if Player.Functions.GetItemByName(name) ~= nil then
            hasItem = true
            local amt = Player.Functions.GetItemByName(name).amount
            local pay = money * amt
            Player.Functions.AddMoney('cash', pay)
            Player.Functions.RemoveItem(name, amt)
        end
    end
    if hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'You have Sold Some 10k Gold Chains', 'success')
    end
    if not hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'you dont have anything to sell', 'error')
    end 
end)

RegisterNetEvent("gdn-illegaljob:gemr", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hasItem = nil
    for k, v in pairs(Config.r) do
        local name = v.itemName
        local money = math.random(v.MinSellPrice,v.MaxSellPrice)
        if Player.Functions.GetItemByName(name) ~= nil then
            hasItem = true
            local amt = Player.Functions.GetItemByName(name).amount
            local pay = money * amt
            Player.Functions.AddMoney('cash', pay)
            Player.Functions.RemoveItem(name, amt)
        end
    end
    if hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'You have Sold Some Gems Rubbys....!', 'success')
    end
    if not hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'you dont have anything to sell', 'error')
    end 
end)
RegisterNetEvent("gdn-illegaljob:gems", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hasItem = nil
    for k, v in pairs(Config.s) do
        local name = v.itemName
        local money = math.random(v.MinSellPrice,v.MaxSellPrice)
        if Player.Functions.GetItemByName(name) ~= nil then
            hasItem = true
            local amt = Player.Functions.GetItemByName(name).amount
            local pay = money * amt
            Player.Functions.AddMoney('cash', pay)
            Player.Functions.RemoveItem(name, amt)
        end
    end
    if hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'You have Sold Some Sapphire gems....!', 'success')
    end
    if not hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'you dont have anything to sell', 'error')
    end 
end)

RegisterNetEvent("gdn-illegaljob:gempd", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hasItem = nil
    for k, v in pairs(Config.pd) do
        local name = v.itemName
        local money = math.random(v.MinSellPrice,v.MaxSellPrice)
        if Player.Functions.GetItemByName(name) ~= nil then
            hasItem = true
            local amt = Player.Functions.GetItemByName(name).amount
            local pay = money * amt
            Player.Functions.AddMoney('cash', pay)
            Player.Functions.RemoveItem(name, amt)
        end
    end
    if hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'You have Sold Some Pink diamond....!', 'success')
    end
    if not hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'you dont have anything to sell', 'error')
    end 
end)

RegisterNetEvent("gdn-illegaljob:gemo", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hasItem = nil
    for k, v in pairs(Config.o) do
        local name = v.itemName
        local money = math.random(v.MinSellPrice,v.MaxSellPrice)
        if Player.Functions.GetItemByName(name) ~= nil then
            hasItem = true
            local amt = Player.Functions.GetItemByName(name).amount
            local pay = money * amt
            Player.Functions.AddMoney('cash', pay)
            Player.Functions.RemoveItem(name, amt)
        end
    end
    if hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'You have Sold Some Opal....!', 'success')
    end
    if not hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'you dont have anything to sell', 'error')
    end 
end)

RegisterNetEvent("gdn-illegaljob:geme", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hasItem = nil
    for k, v in pairs(Config.o) do
        local name = v.itemName
        local money = math.random(v.MinSellPrice,v.MaxSellPrice)
        if Player.Functions.GetItemByName(name) ~= nil then
            hasItem = true
            local amt = Player.Functions.GetItemByName(name).amount
            local pay = money * amt
            Player.Functions.AddMoney('cash', pay)
            Player.Functions.RemoveItem(name, amt)
        end
    end
    if hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'You have Sold Some Emerald....!', 'success')
    end
    if not hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'you dont have anything to sell', 'error')
    end 
end)

RegisterNetEvent("gdn-illegaljob:gemd", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hasItem = nil
    for k, v in pairs(Config.o) do
        local name = v.itemName
        local money = math.random(v.MinSellPrice,v.MaxSellPrice)
        if Player.Functions.GetItemByName(name) ~= nil then
            hasItem = true
            local amt = Player.Functions.GetItemByName(name).amount
            local pay = money * amt
            Player.Functions.AddMoney('cash', pay)
            Player.Functions.RemoveItem(name, amt)
        end
    end
    if hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'You have Sold Some Diamonds....!', 'success')
    end
    if not hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'you dont have anything to sell', 'error')
    end 
end)

RegisterNetEvent("gdn-illegaljob:gembd", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hasItem = nil
    for k, v in pairs(Config.o) do
        local name = v.itemName
        local money = math.random(v.MinSellPrice,v.MaxSellPrice)
        if Player.Functions.GetItemByName(name) ~= nil then
            hasItem = true
            local amt = Player.Functions.GetItemByName(name).amount
            local pay = money * amt
            Player.Functions.AddMoney('cash', pay)
            Player.Functions.RemoveItem(name, amt)
        end
    end
    if hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'You have Sold Some Black Diamonds....!', 'success')
    end
    if not hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'you dont have anything to sell', 'error')
    end 
end)
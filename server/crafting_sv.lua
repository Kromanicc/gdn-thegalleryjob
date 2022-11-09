local QBCore = exports['qb-core']:GetCoreObject()
---//// Ruby_ring Crafting 
QBCore.Functions.CreateCallback("gdn-illegaljob:server:rubyrremoveitem", function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local rubber = Player.Functions.GetItemByName("rubber")
    if metalscrap ~= nil and steel ~= nil and rubber ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent("gdn-illegaljob:rubyr_ring", function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem('steel', 125)
    Player.Functions.RemoveItem('metalscrap', 50)
    Player.Functions.RemoveItem('rubber', 200)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['rubyr'], "add")
    Player.Functions.AddItem('rubyr', 1)
    TriggerClientEvent("QBCore.Notify", source, 'You have crafted a Ruby Ring', 'success')
end)
---//// Tanzanr_ring
QBCore.Functions.CreateCallback("gdn-illegaljob:server:tanzanrremoveitem", function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local rubber = Player.Functions.GetItemByName("rubber")
    if metalscrap ~= nil and steel ~= nil and rubber ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent("gdn-illegaljob:tan_ring", function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem('steel', 125)
    Player.Functions.RemoveItem('metalscrap', 50)
    Player.Functions.RemoveItem('rubber', 200)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['tanzanr'], "add")
    Player.Functions.AddItem('tanzanr', 1)
    TriggerClientEvent("QBCore.Notify", source, 'You have crafted a Tanzan Ring', 'success')
end)
---/// Sapphire_ring
QBCore.Functions.CreateCallback("gdn-illegaljob:server:sapphireremoveitem", function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local rubber = Player.Functions.GetItemByName("rubber")
    if metalscrap ~= nil and steel ~= nil and rubber ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent("gdn-illegaljob:sapphire_ring", function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem('steel', 125)
    Player.Functions.RemoveItem('metalscrap', 50)
    Player.Functions.RemoveItem('rubber', 200)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['sappr'], "add")
    Player.Functions.AddItem('sappr', 1)
    TriggerClientEvent("QBCore.Notify", source, 'You have crafted a Sapphire Ring', 'success')
end)
---/// Onxy_ring
QBCore.Functions.CreateCallback("gdn-illegaljob:server:onxyremoveitem", function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local rubber = Player.Functions.GetItemByName("rubber")
    if metalscrap ~= nil and steel ~= nil and rubber ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent("gdn-illegaljob:onxyr_ring", function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem('steel', 125)
    Player.Functions.RemoveItem('metalscrap', 50)
    Player.Functions.RemoveItem('rubber', 200)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['onxyr'], "add")
    Player.Functions.AddItem('onxyr', 1)
    TriggerClientEvent("QBCore.Notify", source, 'You have crafted a Onxy Ring', 'success')
end)
--//
QBCore.Functions.CreateCallback("gdn-illegaljob:server:jaderremoveitem", function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local rubber = Player.Functions.GetItemByName("rubber")
    if metalscrap ~= nil and steel ~= nil and rubber ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent("gdn-illegaljob:jade_ring", function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem('steel', 125)
    Player.Functions.RemoveItem('metalscrap', 50)
    Player.Functions.RemoveItem('rubber', 200)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['jader'], "add")
    Player.Functions.AddItem('jader', 1)
    TriggerClientEvent("QBCore.Notify", source, 'You have crafted a Jade Ring', 'success')
end)
--///// Diamond_ring
QBCore.Functions.CreateCallback("gdn-illegaljob:server:diamonremoveitem", function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local rubber = Player.Functions.GetItemByName("rubber")
    if metalscrap ~= nil and steel ~= nil and rubber ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent("gdn-illegaljob:diamond_ring", function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem('steel', 125)
    Player.Functions.RemoveItem('metalscrap', 50)
    Player.Functions.RemoveItem('rubber', 200)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['diamondr'], "add")
    Player.Functions.AddItem('diamondr', 1)
    TriggerClientEvent("QBCore.Notify", source, 'You have crafted a Diamond Ring', 'success')
end)
---/// Citriner_ring
QBCore.Functions.CreateCallback("gdn-illegaljob:server:citrinerremoveitem", function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local rubber = Player.Functions.GetItemByName("rubber")
    if metalscrap ~= nil and steel ~= nil and rubber ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent("gdn-illegaljob:citrine_ring", function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem('steel', 125)
    Player.Functions.RemoveItem('metalscrap', 50)
    Player.Functions.RemoveItem('rubber', 200)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['citriner'], "add")
    Player.Functions.AddItem('citriner', 1)
    TriggerClientEvent("QBCore.Notify", source, 'You have crafted a citrine Ring', 'success')
end)
---////  aquamariner_ring
QBCore.Functions.CreateCallback("gdn-illegaljob:server:aquamarinerremoveitem", function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local metalscrap = Player.Functions.GetItemByName("metalscrap")
    local steel = Player.Functions.GetItemByName("steel")
    local rubber = Player.Functions.GetItemByName("rubber")
    if metalscrap ~= nil and steel ~= nil and rubber ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterServerEvent("gdn-illegaljob:aquamarine_ring", function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem('steel', 125)
    Player.Functions.RemoveItem('metalscrap', 50)
    Player.Functions.RemoveItem('rubber', 200)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['aquamariner'], "add")
    Player.Functions.AddItem('aquamariner', 1)
    TriggerClientEvent("QBCore.Notify", source, 'You have crafted a Aquamarine Ring', 'success')
end)
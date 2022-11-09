local QBCore = exports['qb-core']:GetCoreObject()

---/// CreateUseableitem Functions with buffs

QBCore.Functions.CreateUseableItem("rubyr", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.GetItemByName(item.name) then return end
    TriggerClientEvent('gdn-illegaljob:rubyrun', source)
end)
QBCore.Functions.CreateUseableItem("rubyr", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("gdn-illegaljob:rubyrun", source, item.name)
    end
end)
---
QBCore.Functions.CreateUseableItem("sappr", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.GetItemByName(item.name) then return end
    TriggerClientEvent('gdn-illegaljob:sapprun', source)
end)
QBCore.Functions.CreateUseableItem("sappr", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("gdn-illegaljob:sapprun", source, item.name)
    end
end)
---
QBCore.Functions.CreateUseableItem("tanzanr", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.GetItemByName(item.name) then return end
    TriggerClientEvent('gdn-illegaljob:tanzanrun', source)
end)
QBCore.Functions.CreateUseableItem("tanzanr", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("gdn-illegaljob:tanzanrun", source, item.name)
    end
end)
---
QBCore.Functions.CreateUseableItem("onxyr", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.GetItemByName(item.name) then return end
    TriggerClientEvent('gdn-illegaljob:onxyrun', source)
end)
QBCore.Functions.CreateUseableItem("onxyr", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("gdn-illegaljob:onxyrun", source, item.name)
    end
end)
---
QBCore.Functions.CreateUseableItem("jader", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.GetItemByName(item.name) then return end
    TriggerClientEvent('gdn-illegaljob:jaderrun', source)
end)
QBCore.Functions.CreateUseableItem("jader", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("gdn-illegaljob:jaderrun", source, item.name)
    end
end)
---
QBCore.Functions.CreateUseableItem("citriner", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.GetItemByName(item.name) then return end
    TriggerClientEvent('gdn-illegaljob:citrinerrun', source)
end)
QBCore.Functions.CreateUseableItem("citriner", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("gdn-illegaljob:citrinerrun", source, item.name)
    end
end)
---
QBCore.Functions.CreateUseableItem("aquamariner", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.GetItemByName(item.name) then return end
    TriggerClientEvent('gdn-illegaljob:aquamarinerrun', source)
end)
QBCore.Functions.CreateUseableItem("aquamariner", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("gdn-illegaljob:aquamarinerrun", source, item.name)
    end
end)
---
QBCore.Functions.CreateUseableItem("diamondr", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.GetItemByName(item.name) then return end
    TriggerClientEvent('gdn-illegaljob:diamondrrun', source)
end)
QBCore.Functions.CreateUseableItem("diamondr", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("gdn-illegaljob:diamondrrun", source, item.name)
    end
end)
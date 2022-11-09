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
RegisterNetEvent("gdn-illegaljob:Gems", function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local hasItem = nil
    for k, v in pairs(Config.Gems) do
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
        TriggerClientEvent('QBCore:Notify', src, 'You have Sold Some Value Gems', 'success')
    end
    if not hasItem then
        TriggerClientEvent('QBCore:Notify', src, 'you dont have anything to sell', 'error')
    end 
end)

RegisterServerEvent("gdn-illegaljob:server:sell")
AddEventHandler("gdn-illegaljob:server:sell", function(amount)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local amount = tonumber(amount)
	local gold = Player.Functions.GetItemByName("goldchain")
	if gold ~= nil then
		local chain = Player.Functions.GetItemByName('goldchain').amount
		if chain >= amount then
			Player.Functions.RemoveItem('goldchain', amount)
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldchain'], "remove")
			Player.Functions.AddMoney('cash', 250)
			TriggerClientEvent('QBCore:Notify', src, 'You have sold ' ..amount.. ' goldchains', 'success')
		else
			TriggerClientEvent('QBCore:Notify', src, 'You do not have enough Gold Chains to do that!', 'error')
		end
	else
		TriggerClientEvent('QBCore:Notify', src, 'You do not have any Gold Chains!', 'error')
	end
end)

RegisterServerEvent("gdn-illegaljob:server:rolex")
AddEventHandler("gdn-illegaljob:server:rolex", function(amount)
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local amount = tonumber(amount)
	local gold = Player.Functions.GetItemByName("rolex")
	if gold ~= nil then
		local rolex = Player.Functions.GetItemByName('rolex').amount
		if rolex >= amount then
			Player.Functions.RemoveItem('rolex', amount)
			TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['rolex'], "remove")
			Player.Functions.AddMoney('cash', 150)
			TriggerClientEvent('QBCore:Notify', src, 'You have sold ' ..amount.. ' rolex', 'success')
		else
			TriggerClientEvent('QBCore:Notify', src, 'You do not have enough rolex to do that!', 'error')
		end
	else
		TriggerClientEvent('QBCore:Notify', src, 'You do not have any rolex!', 'error')
	end
end)
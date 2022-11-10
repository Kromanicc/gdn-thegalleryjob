local QBCore = exports["qb-core"]:GetCoreObject()
local onDuty = true
local PlayerJob = {}


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "gallery" then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    if JobInfo.name == "gallery" then
        if JobInfo.onduty then
            TriggerServerEvent("QBCore:ToggleDuty")
            onDuty = false
        end
    end
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
		isLoggedIn = true
        PlayerData = QBCore.Functions.GetPlayerData()
    end
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
	onDuty = duty
end)

RegisterNetEvent("qb-gallery:DutyB")
AddEventHandler("qb-gallery:DutyB", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

CreateThread(function()
    if Config.Blip then
        local gallery = AddBlipForCoord(vector3(Config.Blip['x'], Config.Blip['y'], Config.Blip['z']))
        SetBlipAsShortRange(gallery, true)
        SetBlipSprite(gallery, 617)
        SetBlipScale(gallery, 0.8)
        SetBlipDisplay(gallery, 4)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(Config.Blip)
        EndTextCommandSetBlipName(gallery)
    end
end)

---////   Progressbar for Triggers to qb-input

RegisterNetEvent('gdn-illegaljob:client:blackD')   ---/// Black diamond
AddEventHandler('gdn-illegaljob:client:blackD', function(amount)
	QBCore.Functions.Progressbar("selling", "Selling Gems or Jewelery..", 10000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
		}, {
			animDict = "mp_common",
			anim = "givetake1_a",
			flags = 8,
		}, {}, {}, function() -- Done			
		TriggerServerEvent("gdn-illegaljob:gembd", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:pinkD')   ---//// Pink diamond
AddEventHandler('gdn-illegaljob:client:pinkD', function(amount)
	QBCore.Functions.Progressbar("selling", "Selling Pink Diamonds..", 10000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
		}, {
			animDict = "mp_common",
			anim = "givetake1_a",
			flags = 8,
		}, {}, {}, function() -- Done			
		TriggerServerEvent("gdn-illegaljob:gempd", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:opals')    ---///// Opal
AddEventHandler('gdn-illegaljob:client:opals', function(amount)
	QBCore.Functions.Progressbar("selling", "Selling Gems or Jewelery..", 10000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
		}, {
			animDict = "mp_common",
			anim = "givetake1_a",
			flags = 8,
		}, {}, {}, function() -- Done			
		TriggerServerEvent("gdn-illegaljob:gemo", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:ruby') ---//// Ruby
AddEventHandler('gdn-illegaljob:client:ruby', function(amount)
	QBCore.Functions.Progressbar("selling", "Selling Ruby Gems..", 10000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
		}, {
			animDict = "mp_common",
			anim = "givetake1_a",
			flags = 8,
		}, {}, {}, function() -- Done			
		TriggerServerEvent("gdn-illegaljob:gemr", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:emeraldss')  --//// Emerald
AddEventHandler('gdn-illegaljob:client:emeraldss', function(amount)
	QBCore.Functions.Progressbar("selling", "Selling Emeralds Gems..", 10000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
		}, {
			animDict = "mp_common",
			anim = "givetake1_a",
			flags = 8,
		}, {}, {}, function() -- Done			
		TriggerServerEvent("gdn-illegaljob:geme", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:sapph')  --/// Sapphire
AddEventHandler('gdn-illegaljob:client:sapph', function(amount)
	QBCore.Functions.Progressbar("selling", "Selling Sapphire Gems..", 10000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
		}, {
			animDict = "mp_common",
			anim = "givetake1_a",
			flags = 8,
		}, {}, {}, function() -- Done			
		TriggerServerEvent("gdn-illegaljob:gems", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:diamond') --//// diamond
AddEventHandler('gdn-illegaljob:client:diamond', function(amount)
	QBCore.Functions.Progressbar("selling", "Selling Diamonds Gems..", 10000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
		}, {
			animDict = "mp_common",
			anim = "givetake1_a",
			flags = 8,
		}, {}, {}, function() -- Done			
		TriggerServerEvent("gdn-illegaljob:gemd", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:client:10k') ----///// 10k gold chain
AddEventHandler('gdn-illegaljob:client:client:10k', function(amount)
	QBCore.Functions.Progressbar("selling", "Selling 10k gold chains..", 10000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
		}, {
			animDict = "mp_common",
			anim = "givetake1_a",
			flags = 8,
		}, {}, {}, function() -- Done			
		TriggerServerEvent("gdn-illegaljob:10kGoldchain", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:client:gold')   --////// Gold chain
AddEventHandler('gdn-illegaljob:client:client:gold', function(amount)
	QBCore.Functions.Progressbar("selling", "Selling Gold Chains..", 10000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
		}, {
			animDict = "mp_common",
			anim = "givetake1_a",
			flags = 8,
		}, {}, {}, function() -- Done			
		TriggerServerEvent("gdn-illegaljob:Goldchain", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:selling:rolex')    --///// Rolex
AddEventHandler('gdn-illegaljob:client:selling:rolex', function(amount)
	QBCore.Functions.Progressbar("selling", "Selling Rolex..", 10000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
		}, {
			animDict = "mp_common",
			anim = "givetake1_a",
			flags = 8,
		}, {}, {}, function() -- Done			
		TriggerServerEvent("gdn-illegaljob:sellrolex", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
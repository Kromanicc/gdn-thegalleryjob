local QBCore = exports["qb-core"]:GetCoreObject()
local onDuty = false
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
---/// Progress Bars Triggers
RegisterNetEvent('gdn-illegaljob:client:client:selling1')
AddEventHandler('gdn-illegaljob:client:client:selling1', function(amount)
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
		TriggerServerEvent("gdn-illegaljob:server:sell", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:client:selling2')
AddEventHandler('gdn-illegaljob:client:client:selling2', function(amount)
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
		TriggerServerEvent("gdn-illegaljob:server:sell", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:client:selling3')
AddEventHandler('gdn-illegaljob:client:client:selling3', function(amount)
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
		TriggerServerEvent("gdn-illegaljob:server:sell", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:client:selling4')
AddEventHandler('gdn-illegaljob:client:client:selling4', function(amount)
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
		TriggerServerEvent("gdn-illegaljob:server:sell", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:client:selling5')
AddEventHandler('gdn-illegaljob:client:client:selling5', function(amount)
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
		TriggerServerEvent("gdn-illegaljob:server:sell", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:client:selling6')
AddEventHandler('gdn-illegaljob:client:client:selling6', function(amount)
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
		TriggerServerEvent("gdn-illegaljob:server:sell", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:client:selling7')
AddEventHandler('gdn-illegaljob:client:client:selling7', function(amount)
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
		TriggerServerEvent("gdn-illegaljob:server:sell", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:client:selling8')
AddEventHandler('gdn-illegaljob:client:client:selling8', function(amount)
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
		TriggerServerEvent("gdn-illegaljob:server:sell", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:client:selling9')
AddEventHandler('gdn-illegaljob:client:client:selling9', function(amount)
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
		TriggerServerEvent("gdn-illegaljob:server:sell", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:client:selling10')
AddEventHandler('gdn-illegaljob:client:client:selling10', function(amount)
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
		TriggerServerEvent("gdn-illegaljob:server:sell", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
RegisterNetEvent('gdn-illegaljob:client:client:selling:rolex')
AddEventHandler('gdn-illegaljob:client:client:selling:rolex', function(amount)
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
		TriggerServerEvent("gdn-illegaljob:server:rolex", amount)
	end, function()
		QBCore.Functions.Notify("Cancelled..", "error")
	end)
end)
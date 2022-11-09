local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent("gdn-illegaljob:ruby_ring")
AddEventHandler("gdn-illegaljob:ruby_ring", function()
			QBCore.Functions.TriggerCallback('gdn-illegaljob:server:rubyrremoveitem', function(HasItems)
				if HasItems then
						QBCore.Functions.Progressbar("crafting_ring", "Crafting Ruby Ring..", 20000, false, true, {
						disableMovement = true,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
						}, {
						animDict = "mp_common",
						anim = "givetake1_a",
						flags = 8,
						}, {}, {}, function() -- Done
					TriggerServerEvent('gdn-illegaljob:rubyr_ring')
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
end)
RegisterNetEvent("gdn-illegaljob:tanzan_ring")
AddEventHandler("gdn-illegaljob:tanzan_ring", function()
			QBCore.Functions.TriggerCallback('gdn-illegaljob:server:tanzanrremoveitem', function(HasItems)
				if HasItems then
						QBCore.Functions.Progressbar("crafting_ring", "Crafting Tanzan Ring..", 20000, false, true, {
						disableMovement = true,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
						}, {
						animDict = "mp_common",
						anim = "givetake1_a",
						flags = 8,
						}, {}, {}, function() -- Done
					TriggerServerEvent('gdn-illegaljob:tan_ring')
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
end)
RegisterNetEvent("gdn-illegaljob:sapp_ring")
AddEventHandler("gdn-illegaljob:sapp_ring", function()
			QBCore.Functions.TriggerCallback('gdn-illegaljob:server:sapphireremoveitem', function(HasItems)
				if HasItems then
						QBCore.Functions.Progressbar("crafting_ring", "Crafting Sapphire Ring..", 20000, false, true, {
						disableMovement = true,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
						}, {
						animDict = "mp_common",
						anim = "givetake1_a",
						flags = 8,
						}, {}, {}, function() -- Done
					TriggerServerEvent('gdn-illegaljob:sapphire_ring')
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
end)
RegisterNetEvent("gdn-illegaljob:onxyrr_ring")
AddEventHandler("gdn-illegaljob:onxyrr_ring", function()
			QBCore.Functions.TriggerCallback('gdn-illegaljob:server:onxyremoveitem', function(HasItems)
				if HasItems then
						QBCore.Functions.Progressbar("crafting_ring", "Crafting Onxy Ring..", 20000, false, true, {
						disableMovement = true,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
						}, {
						animDict = "mp_common",
						anim = "givetake1_a",
						flags = 8,
						}, {}, {}, function() -- Done
					TriggerServerEvent('gdn-illegaljob:onxyr_ring')
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
end)
RegisterNetEvent("gdn-illegaljob:jader_ring")
AddEventHandler("gdn-illegaljob:jader_ring", function()
			QBCore.Functions.TriggerCallback('gdn-illegaljob:server:jaderremoveitem', function(HasItems)
				if HasItems then
						QBCore.Functions.Progressbar("crafting_ring", "Crafting Jader Ring..", 20000, false, true, {
						disableMovement = true,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
						}, {
						animDict = "mp_common",
						anim = "givetake1_a",
						flags = 8,
						}, {}, {}, function() -- Done
					TriggerServerEvent('gdn-illegaljob:jade_ring')
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
end)
RegisterNetEvent("gdn-illegaljob:citrine_ring")
AddEventHandler("gdn-illegaljob:citrine_ring", function()
			QBCore.Functions.TriggerCallback('gdn-illegaljob:server:citrinerremoveitem', function(HasItems)
				if HasItems then
						QBCore.Functions.Progressbar("crafting_ring", "Crafting Citrine Ring..", 20000, false, true, {
						disableMovement = true,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
						}, {
						animDict = "mp_common",
						anim = "givetake1_a",
						flags = 8,
						}, {}, {}, function() -- Done
					TriggerServerEvent('gdn-illegaljob:citrine_ring')
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
end)
RegisterNetEvent("gdn-illegaljob:aquamariner_ring")
AddEventHandler("gdn-illegaljob:aquamariner_ring", function()
			QBCore.Functions.TriggerCallback('gdn-illegaljob:server:aquamarinerremoveitem', function(HasItems)
				if HasItems then
						QBCore.Functions.Progressbar("crafting_ring", "Crafting Aquamarine Ring..", 20000, false, true, {
						disableMovement = true,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
						}, {
						animDict = "mp_common",
						anim = "givetake1_a",
						flags = 8,
						}, {}, {}, function() -- Done
					TriggerServerEvent('gdn-illegaljob:aquamarine_ring')
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
end)
RegisterNetEvent("gdn-illegaljob:diamondd_ring")
AddEventHandler("gdn-illegaljob:diamondd_ring", function()
			QBCore.Functions.TriggerCallback('gdn-illegaljob:server:diamonremoveitem', function(HasItems)
				if HasItems then
						QBCore.Functions.Progressbar("crafting_ring", "Crafting Diamond Ring..", 20000, false, true, {
						disableMovement = true,
						disableCarMovement = true,
						disableMouse = false,
						disableCombat = true,
						}, {
						animDict = "mp_common",
						anim = "givetake1_a",
						flags = 8,
						}, {}, {}, function() -- Done
					TriggerServerEvent('gdn-illegaljob:diamond_ring')
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
end)
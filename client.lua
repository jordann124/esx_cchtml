ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(100)
	end

	ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterCommand("helpnui", function(source, args, rawCommand)
	SetNuiFocus( false, false )
	SendNUIMessage({
		showPlayerMenu = false
	})

end)

RegisterCommand("cc", function(source, args, rawCommand)
	TriggerServerEvent("CChtml:getdata")
end)

RegisterCommand("darcc", function(source, args, rawCommand)
TriggerServerEvent('3dme:shareDisplay', "A Tirar o Cartão De Cidadão")
	local ped = GetPlayerPed()
	local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
		if closestDistance ~= -1 and closestDistance <= 4 then
			TriggerServerEvent("CChtml:getdatad", GetPlayerServerId(closestPlayer))
		else
			ESX.ShowNotification("O player tem de estar mais perto")
		end
end)
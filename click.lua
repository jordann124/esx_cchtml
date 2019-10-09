


RegisterNetEvent("CChtml:setdata")
AddEventHandler("CChtml:setdata", function(nome, unome, datad)
	SetNuiFocus( true, true )
	SendNUIMessage({
			showPlayerMenu = true,
			nomeh = nome,
			unomeh = unome,
			datadh = datad 
	})
end)

function killTutorialMenu()
		SetNuiFocus( false, false )
		SendNUIMessage({
			showPlayerMenu = false
		})
end

RegisterNUICallback('closeButton', function(data, cb)
	killTutorialMenu()
  	cb('ok')
end)

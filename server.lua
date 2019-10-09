ESX = nil

-- ESX
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('CChtml:getdata')
AddEventHandler('CChtml:getdata', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local xIdentifier = xPlayer.getIdentifier()
	local fnome = MySQL.Sync.fetchScalar("SELECT firstname FROM users WHERE identifier = @id", {['@id'] = xIdentifier})
	local unome = MySQL.Sync.fetchScalar("SELECT lastname FROM users WHERE identifier = @id", {['@id'] = xIdentifier})
	local ddata = MySQL.Sync.fetchScalar("SELECT dateofbirth FROM users WHERE identifier = @id", {['@id'] = xIdentifier})
	TriggerClientEvent("CChtml:setdata", xPlayer.source, fnome, unome, ddata)
end)

RegisterServerEvent('CChtml:getdatad')
AddEventHandler('CChtml:getdatad', function(dplayer)
	local xPlayer = ESX.GetPlayerFromId(source)
	local xAlvo = ESX.GetPlayerFromId(dplayer)
	local xIdentifier = xPlayer.getIdentifier()
	local fnome = MySQL.Sync.fetchScalar("SELECT firstname FROM users WHERE identifier = @id", {['@id'] = xIdentifier})
	local unome = MySQL.Sync.fetchScalar("SELECT lastname FROM users WHERE identifier = @id", {['@id'] = xIdentifier})
	local ddata = MySQL.Sync.fetchScalar("SELECT dateofbirth FROM users WHERE identifier = @id", {['@id'] = xIdentifier})
	TriggerClientEvent("CChtml:setdata", xAlvo.source, fnome, unome, ddata)
end)
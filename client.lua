--{ Trojen#7816 }--

ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterServerEvent('trojen:meslek')
AddEventHandler('trojen:meslek'function(source)
	local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
	local job = xPlayer.getJob()
	exports['mythic_notify']:SendAlert('inform',"Mesleğin: "..job.label.." Meslekteki rütben: "..job.grade_label,7000)
end)
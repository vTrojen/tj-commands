ESX = nil


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local function getMoneyFromUser(id_user)
	local xPlayer = ESX.GetPlayerFromId(id_user)
	return xPlayer.getMoney()

end

local function getMoneyFromUser(id_user)
	local xPlayer = ESX.GetPlayerFromId(id_user)
	return xPlayer.getMoney()

end

local function getBlackMoneyFromUser(id_user)
		local xPlayer = ESX.GetPlayerFromId(id_user)
		local account = xPlayer.getAccount('black_money')
	return account.money

end

local function getBankFromUser(id_user)
		local xPlayer = ESX.GetPlayerFromId(id_user)
		local account = xPlayer.getAccount('bank')
	return account.money

end
	
RegisterCommand("meslek", function(source)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local job = xPlayer.getJob()
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = "Mesleğin: "..job.label.." Meslekteki rütben: "..job.grade_label })
end)

RegisterCommand("parabak", function(source)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local wallet = xPlayer.getMoney()
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = "Üzerinde "..wallet.." dolar var" })
end)

RegisterCommand("bankapara", function(source)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local wallet = getBankFromUser(src)
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = "Bankanda "..wallet.." dolar var" })
end)

RegisterCommand("karapara", function(source)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local wallet = getBlackMoneyFromUser(src)
	TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = "Üzerinde "..wallet.." dolar karapara var" })
end)








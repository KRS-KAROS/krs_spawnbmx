ESX = exports["es_extended"]:getSharedObject()




ESX.RegisterUsableItem("bmx", function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local bmx = xPlayer.getInventoryItem("bmx").count 
    if bmx > 0 then 
        xPlayer.removeInventoryItem('bmx', 1)
        TriggerClientEvent("spawnbmx", xPlayer.source)
    else
        TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non possiedi la bmx'})
    end
end)


RegisterNetEvent('eliminabici')
AddEventHandler('eliminabici', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addInventoryItem('bmx', 1) 
end)

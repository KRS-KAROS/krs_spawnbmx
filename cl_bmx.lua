ESX = exports["es_extended"]:getSharedObject()



local options = {
  
    {
        name = 'ox:option1',
        icon = 'fa-solid fa-bicycle',
        label = 'Prendi bmx',
        onSelect = function(data)
        SetEntityAsMissionEntity(data.entity, true, true)
        DeleteEntity(data.entity)
        TriggerServerEvent('eliminabici')
    end, 
        canInteract = function(entity, distance, coords, name, bone)
            return not IsEntityDead(entity)
        end
    }
}

local models = { 1131912276 }
local optionsNames = { 'ox:option1'}

exports.ox_target:addModel(models, options)


RegisterNetEvent("spawnbmx")
AddEventHandler("spawnbmx", function()
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)
    local   modelHash = GetHashKey("bmx")
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
    Wait(1)
    end
    local forward = GetEntityForwardVector(playerPed)
    local spawnCoords = coords + forward * 2.0
    
    local bmx = CreateVehicle(GetHashKey("bmx"), spawnCoords.x, spawnCoords.y, spawnCoords.z, GetEntityHeading(playerPed), true, false)
    
    SetPedIntoVehicle(playerPed, bmx, -1)
    -- SetVehicleNumberPlateText(bmx, "BMX" .. math.random(1000, 9999))
    TaskWarpPedIntoVehicle(playerPed, bmx, -1)
end)


-- Store references to all created blips
local createdBlips = {}

-- Function to remove all created blips
local function removeAllBlips()
    print("Removing all blips...")
    for _, blip in ipairs(createdBlips) do
        RemoveBlip(blip)
    end
    createdBlips = {} -- Clear the table
end

-- Ensure cleanup is done when the resource stops
AddEventHandler("onResourceStop", function(resourceName)
    if GetCurrentResourceName() == resourceName then
        removeAllBlips()
    end
end)

-- Function to create blips
Citizen.CreateThread(function()

    for _, info in pairs(config.blips) do
        -- Create the blip
        local blip = AddBlipForCoord(info.x, info.y, info.z)

        -- Set the blip properties
        SetBlipSprite(blip, info.id)
        SetBlipDisplay(blip, info.behavior) -- Display on map and minimap
        SetBlipScale(blip, 1.0) -- Size of the blip
        SetBlipColour(blip, info.color)
        SetBlipAsShortRange(blip, info.range) -- Only show when nearby

        -- Set the blip name
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(info.title)
        EndTextCommandSetBlipName(blip)

        -- Store the blip for later removal
        table.insert(createdBlips, blip)
    end
end)

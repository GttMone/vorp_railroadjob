--######################### edit for VORP by: outsider & GttMone ########################

local VORPcore = {}

TriggerEvent('getCore', function(core)
    VORPcore = core
end)

-------------------- Job Handling --------------------
AddEventHandler('vorp:SelectedCharacter', function(source, character)
    local src = source
    TriggerClientEvent('vorp_railroadjob:client:UpdateJob', src, character.job)
end)

AddEventHandler("vorp:playerJobChange", function(source, job)
    local src = source
    TriggerClientEvent('vorp_railroadjob:client:UpdateJob', src, job)
end)

RegisterNetEvent('vorp_railroadjob:server:GetJob', function()
    local src = source
    local user = VORPcore.getUser(source)
    if not user then return end
    
    local job = user.getUsedCharacter.job
    TriggerClientEvent('vorp_railroadjob:client:UpdateJob', src, job)
end)
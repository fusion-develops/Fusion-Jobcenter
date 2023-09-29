RegisterNetEvent('fusion:jobcenter', function (CenterIndex, JobIndex)
    local JobData, xPlayer = Config[CenterIndex].Jobs[JobIndex], ESX.GetPlayerFromId(source)

    if JobData then 
        xPlayer.setJob(JobData.Job, JobData.Grade)
        xPlayer.showNotification('You Have Been Hired For '.. JobData.Job)
    else 
        return xPlayer.kick('lol cheater')
    end 
end)
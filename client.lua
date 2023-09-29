
for i = 1, #Config do 
    local CenterData = Config[i]
    local JobOptions = {}


    for j = 1, #CenterData.Jobs do 
        local curjob = CenterData.Jobs[j]
        JobOptions[#JobOptions+1] = {
            title = CenterData.JobLabelPrefix .. ' '.. curjob.Job,
            description = 'Apply For '.. curjob.Job,
            onSelect = function()
                TriggerServerEvent('fusion:jobcenter', i, j)
            end,
        }
    end 

    lib.registerContext({
        id = 'jobcenter'.. i,
        title = CenterData.CenterTitle,
        options = JobOptions
    })

    local point = lib.points.new({
        coords = CenterData.Position,
        distance =  CenterData.Radius,
    })
    
    function point:onEnter()
        TextUI(CenterData.OpenCenterText)
    end
    
    function point:onExit()
        HideTextUI()
    end
    
    function point:nearby()
        CenterData.DrawMarker(CenterData.Position)
        if self.currentDistance < CenterData.AccessRadius and IsControlJustReleased(0, CenterData.OpenKey) then
            lib.hideContext(false)
            lib.showContext('jobcenter'.. i)
        end
    end

end 
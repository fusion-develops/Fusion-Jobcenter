Config = {
    {
        Position = vec3(473.4588, -1487.6437, 42.0785),
        Radius = 5, -- Point Radius 
        AccessRadius = 1,
        OpenCenterText = '[E] Open The Job Center',
        OpenKey = 38,
        CenterTitle = 'Job Center',
        JobLabelPrefix = 'Apply For', -- Ex Apply For police
        Jobs = {
            {Job = 'police', Grade = 1},
        },
        DrawMarker = function(coords)
            ---@diagnostic disable-next-line: missing-parameter
            DrawMarker(43, coords, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 14, 123, 220, 50, false, true, 2, false, nil, nil, false)
        end,
    },
}

if not IsDuplicityVersion() then 
    function TextUI(text)
        return lib.showTextUI(text)
    end

    function HideTextUI()
        if lib.isTextUIOpen() then 
            return lib.hideTextUI()
        end
    end
end

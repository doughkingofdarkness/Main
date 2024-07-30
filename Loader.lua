local list = {
    -- Da Hood
    ["2788229376"] = "https://raw.githubusercontent.com/doughkingofdarkness/dahood/main/main.lua",
    -- Taxi Boss
    ["7305309231"] = "https://raw.githubusercontent.com/doughkingofdarkness/taxiboss/main/loader.lua"
}

local placeId = tostring(game.PlaceId)
local scriptUrl = list[placeId]

if scriptUrl then
    local success, err = pcall(function()
        loadstring(game:HttpGet(scriptUrl))()
    end)

    if not success then
        warn("son get a better executor")
    end
else
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

    local notiftxt = "Lamela Hub"
     Fluent:Notify({
        Title = notiftxt,
        Content = "This game isn't supported.",
        SubContent = "):",
        Duration = 30
    })
end

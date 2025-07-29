-- Central init, can be extended later
local f = CreateFrame("Frame")
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", function(_, _, addonName)
    if addonName == "MyCombatText" then
        print("|cff00ccffMyCombatText loaded!|r")
    end
end)

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function()
    if IsLoggedIn() then
        SetCVar("enableCombatText", 1) -- Keeps checkbox on
        -- You can force more CVars here if needed
    end
end)

MyCombatTextDB = MyCombatTextDB or {
    showLowMana = true,
    showAuras = true,
    showCombatState = true,
    showDodges = true,
    -- Add more toggles here if desired
}

-- Optional slash command for toggling
SLASH_MCT1 = "/mct"
SlashCmdList["MCT"] = function(msg)
    print("|cffffcc00MyCombatText loaded.|r Edit settings in config.lua.")
end

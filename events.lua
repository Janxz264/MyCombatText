local f = CreateFrame("Frame")
f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
f:SetScript("OnEvent", function()
    local _, subevent, _, sourceGUID, _, sourceName, _, destGUID, _, _, _, spellID, spellName, _, amount = CombatLogGetCurrentEventInfo()

if subevent == "SPELL_AURA_APPLIED" and MyCombatTextDB.showAuras then
    if sourceGUID == UnitGUID("player") then
        sourceName = UnitName("player") or "You"
    else
        sourceName = sourceName or "Unknown"
    end
    MyCombatTextEngine.Show("Aura: " .. spellName .. " by: " .. sourceName, {0.8, 0.4, 1})
end
    -- Extend with more filters (Low Mana, Reputation, Honor, etc.)
end)

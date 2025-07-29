local f = CreateFrame("Frame")
f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
f:SetScript("OnEvent", function()
    local _, subevent, _, sourceGUID, _, _, _, destGUID, _, _, _, spellID, spellName, _, amount = CombatLogGetCurrentEventInfo()

    if subevent == "SPELL_AURA_APPLIED" and MyCombatTextDB.showAuras then
        MyCombatTextEngine.Show("Aura: " .. spellName, {0.8, 0.4, 1})
    elseif subevent == "SPELL_MISSED" and MyCombatTextDB.showDodges then
        MyCombatTextEngine.Show("Missed: " .. spellName, {1, 0.2, 0.2})
    elseif subevent == "UNIT_DIED" and MyCombatTextDB.showCombatState then
        MyCombatTextEngine.Show("Enemy defeated!", {0, 1, 0})
    end
    -- Extend with more filters (Low Mana, Reputation, Honor, etc.)
end)

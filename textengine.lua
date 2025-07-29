local function ShowCombatText(msg, color)
    local holder = CreateFrame("Frame", nil, UIParent)
    holder:SetSize(1, 1)
    holder:SetPoint("CENTER", UIParent, "CENTER", 0, 100)

    local text = holder:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    text:SetText(msg)
    text:SetTextColor(unpack(color or {1, 1, 1}))
    text:SetPoint("CENTER", holder, "CENTER")
    text:Show()

    local elapsed = 0
    local duration = 1.5
    local speedY = 40 -- pixels to move upward

    holder:SetScript("OnUpdate", function(self, e)
        elapsed = elapsed + e
        local offset = speedY * (elapsed / duration)
        self:SetPoint("CENTER", UIParent, "CENTER", 0, 100 + offset)
        text:SetAlpha(1 - (elapsed / duration))
        if elapsed >= duration then
            self:SetScript("OnUpdate", nil)
            text:Hide()
            self:Hide()
            self:SetParent(nil)
        end
    end)
end

MyCombatTextEngine = MyCombatTextEngine or {}
MyCombatTextEngine.Show = ShowCombatText
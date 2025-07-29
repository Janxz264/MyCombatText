local function ShowCombatText(msg, color)
    local text = UIParent:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
    text:SetText(msg)
    text:SetTextColor(unpack(color or {1, 1, 1}))
    text:SetPoint("CENTER", UIParent, "CENTER", 0, 100)

    local anim = CreateAnimationGroup(text)
    local move = anim:CreateAnimation("Translation")
    move:SetOffset(0, 50)
    move:SetDuration(1)
    local fade = anim:CreateAnimation("Alpha")
    fade:SetFromAlpha(1)
    fade:SetToAlpha(0)
    fade:SetDuration(1)

    anim:SetScript("OnFinished", function()
        text:Hide()
        text:SetParent(nil)
    end)
    anim:Play()
end

-- Make accessible to other files
MyCombatTextEngine = MyCombatTextEngine or {}
MyCombatTextEngine.Show = ShowCombatText

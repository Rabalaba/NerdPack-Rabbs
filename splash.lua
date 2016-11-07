local _, Rabbs = ...

-- Splash stuff
local Splash_Frame = CreateFrame("Frame", "Rabbs_SPLASH", UIParent)
Splash_Frame:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background",
	edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
	tile = true, tileSize = 16, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 }
});
Splash_Frame:SetBackdropColor(0,0,0,1);
Splash_Frame:Hide()

local texture = Splash_Frame:CreateTexture()
texture:SetPoint("LEFT",-4,0)
texture:SetSize(100,100)

local text = Splash_Frame:CreateFontString(nil, "BACKGROUND", "PVPInfoTextFont");
text:SetPoint("RIGHT",-4,0)

local callTime = 0

C_Timer.NewTicker(0.01, (function()
	if Splash_Frame:IsShown() then
		if GetTime()-callTime >= 2 then
			local Alpha = Splash_Frame:GetAlpha()
			Splash_Frame:SetAlpha(Alpha-.01)
			if Alpha <= 0 then
				Splash_Frame:Hide()
				Splash_Frame:SetAlpha(1)
			end
		end
	end
end), nil)

local AddonInfo = '|cff'..Rabbs.addonColor..Rabbs.Name

function Rabbs.Splash()
	Splash_Frame:SetAlpha(1)
	Splash_Frame:Show()
	PlaySound('VO_70_Arch-Druid_Glaidalis_25', 'SFX')
	local color = NeP.Core:ClassColor('player', 'hex')
	local currentSpec = GetSpecialization()
	local _, SpecName, _, icon, background = GetSpecializationInfo(currentSpec)
	local class = UnitClass('player')
	texture:SetTexture('Interface\\AddOns\\NerdPack-Rabbs\\media\\logo.blp')
	text:SetText(AddonInfo..'\n|cff'..color..class..' - '..SpecName..' \n|cffC2012F--- Version: '..Rabbs.Version..' ---')
	callTime = GetTime()
	local Width = text:GetStringWidth()+texture:GetWidth()+8
	Splash_Frame:SetSize(Width,100)
	Splash_Frame:SetPoint("CENTER",0,0)
end

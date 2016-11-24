local _, Rabbs = ...

local exeOnLoad = function()
	Rabbs.ExeOnLoad()
    NeP.Interface:AddToggle({
		key = 'taunt',
		name = 'Taunt Units',
		text = 'Enable to taunt units you dont have aggro from.',
		icon = 'Interface\\Icons\\Ability_warrior_charge',
	})

	print('|cffADFF2F ----------------------------------------------------------------------|r')
	print('|cffADFF2F --- |rDRUID |cffFFA500Guardian |r')
	print('|cffADFF2F --- |rRecommended Talents: 1/2 - 2/3 - 3/3 - 4/3 - 5/3 - 6/2 - 7/1')
	print('|cffADFF2F ----------------------------------------------------------------------|r')

end
local GUI = {
	{type = 'header', text = 'Keybinds:'},
	{type = 'text', text = 'Alt: Pause'},
}

local Keybinds = {
	-- Pause
	{'%pause', 'keybind(alt)'},
}

local inCombat = {
    {'Mind Blast', 'OvaleBestAction==8092', 'target'},
    {'Shadow Word: Pain', 'OvaleBestAction==589', 'target'},
    {'Power Infusion', 'OvaleBestAction==10060', 'target'},
    {'Shadow Crash', 'OvaleBestAction==205385', 'target'},
    {'Vampiric Touch', 'OvaleBestAction==34914', 'target'},
    {'Mind Flay', 'OvaleBestAction==15407', 'target'},
    {'Void Eruption', 'OvaleBestAction==228260', 'target'},
    {'Void Eruption', 'OvaleBestAction==205448', 'target'},
}

local outCombat = {
	{Keybinds},
}

NeP.CR:Add(258, '[|cff'..Rabbs.addonColor..'Rabbs|r] PRIEST - Shadow', inCombat, outCombat,exeOnLoad)
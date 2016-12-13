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
    {'Power Word: Shield', 'lnbuff1(TANK,Power Word: Shield).health<100', 'lnbuff1(TANK,Power Word: Shield)'},
    {'Power Word: Radiance', 'lnbuff(TANK,Atonement).health<=100', 'lnbuff(TANK,Atonement)'},
    {'Power Word: Radiance', 'lnbuff(HEALER,Atonement).health<=100', 'lnbuff(HEALER,Atonement)'},
    {'Power Word: Radiance', 'lnbuff(DAMAGER,Atonement).health<=100', 'lnbuff(DAMAGER,Atonement)'},
    {'Shadowmend', 'lowest1(TANK).health<35'},
    {'Shadowmend', 'lowest1(HEALER).health<40'},
    {'Shadowmend', 'lowest1(DAMAGER).health<45'},
    {'Mindbender', nil, 'target'},
    {'Schism', nil, 'target'},
    {'Shadow Word: Pain', '!target.debuff(Shadow Word: Pain)', 'target'},
    {'Divine Star'},
    {'Penance', nil, 'target'},
    {'Smite', nil, 'target'},
}

local outCombat = {
	{Keybinds},
}

NeP.CR:Add(256, '[|cff'..Rabbs.addonColor..'Rabbs|r] Priest - Disc', inCombat, outCombat,exeOnLoad)
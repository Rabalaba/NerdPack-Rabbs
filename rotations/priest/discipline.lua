local Keybinds = {
	-- Pause
	{'%pause', 'keybind(alt)'},
}

local inCombat = {
{'Shadow Word:Pain', '!target.debuff(Shadow Word:Pain)'},
    {'Power Word:Shield', 'lnbuff1(TANK,Power Word:Shield).incdmg(6)>5000', 'lnbuff1(TANK,Power Word:Shield)'},
    {'Shadowmend', 'lowest1(TANK).health<35'},
    {'Shadowmend', 'lowest1(HEALER).health<40'},
    {'Shadowmend', 'lowest1(DAMAGER).health<45'},
}

local outCombat = {
	{Keybinds},
}

NeP.CR:Add(256, '[|cff'..Rabbs.addonColor..'Rabbs|r] Discipline - Priest', inCombat, outCombat, exeOnLoad)
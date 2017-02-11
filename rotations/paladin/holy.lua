local _, Rabbs = ...

local exeOnLoad = function()
	Rabbs.ExeOnLoad()

	print('|cffADFF2F ----------------------------------------------------------------------|r')
	print('|cffADFF2F --- |rPALADIN |cffFFA500HOLY |r')
	print('|cffADFF2F --- |rRecommended Talents: 1/3 - 2/3 - 3/3 - 4/3 - 5/2 - 6/3 - 7/2')
	print('|cffADFF2F ----------------------------------------------------------------------|r')
NeP.Interface:AddToggle({
		key = 'dispellall',
		name = 'Dispell All',
		text = 'ON/OFF Dispell all Debuffs',
		icon = 'Interface\\Icons\\spell_holy_purify',
	})
    
    NeP.Interface:AddToggle({
		key = 'dps',
		name = 'DPS',
		text = 'ON/OFF Throw down some DPS',
		icon = 'Interface\\Icons\\spell_holy_crusaderstrike',
	})
end
local Keybinds = {
	-- Pause
	{'%pause', 'keybind(alt)'},
}

local Dispell = {
	{'%dispellall', 'spell(Cleanse).cooldown = 0'},
}

local RAID = {
{'Lay on Hands', 'lndebuffforbearance(TANK).health.missingpredicted>lohraidtank.heals', 'lndebuffforbearance(TANK)'},
{'Lay on Hands', 'lndebuffforbearance(HEALER).health.missingpredicted>loh.heals', 'lndebuffforbearance(HEALER)'},
{'Lay on Hands', 'lndebuffforbearance(DAMAGER).health.missingpredicted>loh.heals', 'lndebuffforbearance(DAMAGER)'},
{'Blessing of Protection', 'lndebuffforbearance(HEALER).health.missingpredicted>loh.heals', 'lndebuffforbearance(HEALER)'},
{'Blessing of Protection', 'lndebuffforbearance(DAMAGER).health.missingpredicted>loh.heals', 'lndebuffforbearance(DAMAGER)'},
{'Holy Shock', 'lowestpredicted.health.missingpredicted>holyshockraid.heals', 'lowestpredicted'},
{'Holy Shock', 'lowestpredicted.health.missingpredicted>holyshockraid.heals&target.enemy&toggle(dps)', 'target'},
{'Rule of Law', 'player.area(29,90).heal.infront >= 2&player.area(15,90).heal.infront < 2' },
{'Light of Dawn', 'player.area(15,90).heal.infront >= 2'},
{'Light of Dawn', 'player.buff(Rule of Law)&player.area(29,90).heal.infront >= 2'},
{'Judgment', 'target.enemy&toggle(dps)'},
{'Bestow Faith', 'lowestpredicted.health.missingpredicted>bfraid.heals', 'lowestpredicted'},
    
{'Flash of Light', 'lowestpredicted.health.missingpredicted>folraid.heals&lowestpredicted.health<60',  'lowestpredicted'},
    
{'Beacon of Light', '!lowest1(TANK).buff(Beacon of Light)&!lowest2(TANK).buff(Beacon of Light)&!lowest3(TANK).buff(Beacon of Light)', 'lowest1(TANK)'},
--beacon swap
{'Beacon of Light', '{lowest2(TANK).buff(Beacon of Light)||lowest3(TANK).buff(Beacon of Light)}&{lowest1(TANK).health.missingpredicted>{lowest2(TANK).health.missingpredicted+folhraid.heals}}', 'lowest1(TANK)'},
    
{'Holy Light', 'lowestpredicted.health.missingpredicted>holiraid.heals', 'lowestpredicted'},
{'Crusader Strike', 'target.enemy&target.range<8&toggle(dps)'},
{'Consecration', 'target.enemy&target.range<8&toggle(dps)'},
}

local PARTY = {
{'Lay on Hands', 'lndebuffforbearance(TANK).health.missingpredicted>lohraidtank.heals', 'lndebuffforbearance(TANK)'},
{'Lay on Hands', 'lndebuffforbearance(HEALER).health.missingpredicted>loh.heals', 'lndebuffforbearance(HEALER)'},
{'Lay on Hands', 'lndebuffforbearance(DAMAGER).health.missingpredicted>loh.heals', 'lndebuffforbearance(DAMAGER)'},
{'Blessing of Protection', 'lndebuffforbearance(HEALER).health.missingpredicted>loh.heals', 'lndebuffforbearance(HEALER)'},
{'Blessing of Protection', 'lndebuffforbearance(DAMAGER).health.missingpredicted>loh.heals', 'lndebuffforbearance(DAMAGER)'},
{'Holy Shock', 'lowestpredicted.health.missingpredicted>holyshockparty.heals', 'lowestpredicted'},
{'Holy Shock', 'lowestpredicted.health.missingpredicted<holyshockparty.heals&target.enemy&toggle(dps)'},
{'Light of Dawn', 'player.area(15,90).heal.infront >= 2'},
{'Light of Dawn', 'player.buff(Rule of Law)&player.area(29,90).heal.infront >= 2'},
{'Bestow Faith', 'lowestpredicted.health.missingpredicted>bfparty.heals', 'lowestpredicted'},
    
{'Flash of Light', 'lowestpredicted.health.missingpredicted>folparty.heals&lowestpredicted.health<60',  'lowestpredicted'},
{'Judgment', 'target.enemy&toggle(dps)'},   
{'Beacon of Light', '!lowest1(TANK).buff(Beacon of Light)&!lowest2(TANK).buff(Beacon of Light)&!lowest3(TANK).buff(Beacon of Light)', 'lowest1(TANK)'},

{'Holy Light', 'lowestpredicted.health.missingpredicted>holiparty.heals', 'lowestpredicted'},

{'Crusader Strike', 'target.enemy&target.range<8&toggle(dps)'},
{'Consecration', 'target.enemy&target.range<8&toggle(dps)'},
}

local SOLO = {
{'Lay on Hands', 'player.health<20&!player.debuff.any(Forbearance)', 'player'},
{'Blessing of Protection', 'player.health<30&!player.debuff.any(Forbearance)', 'player'},
{'Holy Shock', 'player.health.missingpredicted>holyshocksolo.heals', 'player'},
{'Holy Shock', 'player.health.missingpredicted<holyshocksolo.heals&target.enemy&toggle(dps)'},
{'Judgment', 'target.enemy&toggle(dps)'},
{'Bestow Faith', 'player.health.missingpredicted>bfsolo.heals', 'player'},
{'Flash of Light', 'lowestpredicted.health.missingpredicted>folsolo.heals',  'lowestpredicted'},
{'Beacon of Light', '!player.buff(Beacon of Light)', 'player'},
{'Holy Light', 'lowestpredicted.health.missingpredicted>holisolo.heals', 'lowestpredicted'},
{'Crusader Strike', 'target.enemy&target.range<8toggle(dps)'},
{'Consecration', 'target.enemy&target.range<8&toggle(dps)'},
}

local Moving = {
{'Lay on Hands', 'lndebuffforbearance(TANK).health.missingpredicted>lohraidtank.heals', 'lndebuffforbearance(TANK)'},
{'Lay on Hands', 'lndebuffforbearance(HEALER).health.missingpredicted>loh.heals', 'lndebuffforbearance(HEALER)'},
{'Lay on Hands', 'lndebuffforbearance(DAMAGER).health.missingpredicted>loh.heals', 'lndebuffforbearance(DAMAGER)'},
{'Blessing of Protection', 'lndebuffforbearance(HEALER).health.missingpredicted>loh.heals', 'lndebuffforbearance(HEALER)'},
{'Blessing of Protection', 'lndebuffforbearance(DAMAGER).health.missingpredicted>loh.heals', 'lndebuffforbearance(DAMAGER)'},
{'Light of the Martyr', 'lowestpredicted.health.missingpredicted>folparty.heals&player.health.missingpredicted>{lowestpredicted.health.missingpredicted+folparty.heals}',  'lowestpredicted'},
{'Holy Shock', 'lowestpredicted.health.missingpredicted>holyshockraid.heals', 'lowestpredicted'},
{'Holy Shock', 'lowestpredicted.health.missingpredicted>holyshockraid.heals&target.enemy&toggle(dps)', 'target'},
{'Rule of Law', 'player.area(29,90).heal.infront >= 2&player.area(15,90).heal.infront < 2' },
{'Light of Dawn', 'player.area(15,90).heal.infront >= 2'},
{'Light of Dawn', 'player.buff(Rule of Law)&player.area(29,90).heal.infront >= 2'},
{'Judgment', 'target.enemy&toggle(dps)'},
{'Bestow Faith', 'lowestpredicted.health.missingpredicted>bfraid.heals', 'lowestpredicted'},


}


local inCombat = {
	{Keybinds},
    {Dispell, 'toggle(dispellall)'},
	{Moving, 'player.moving'},
    {RAID, 'partycheck=3'},
	{PARTY, 'partycheck=2' },
    {SOLO, 'partycheck=1'},
    
}



local outCombat = {
	{Keybinds},

}

NeP.CR:Add(65, '[|cff'..Rabbs.addonColor..'Rabbs|r] Paladin - Holy', inCombat, outCombat, exeOnLoad)

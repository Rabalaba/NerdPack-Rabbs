local _, Rabbs = ...
local GUI = {

}

local exeOnLoad = function()
	Rabbs.ExeOnLoad()

	print('|cffADFF2F ----------------------------------------------------------------------|r')
	print('|cffADFF2F --- |rDK |cffFFA500Outlaw |r')
	print('|cffADFF2F --- |rRecommended Talents: 1/2 - 2/2 - 3/3 - 4/2 - 5/2 - 6/2 - 7/1')
	print('|cffADFF2F ----------------------------------------------------------------------|r')
    
    NeP.Interface:AddToggle({
		key = 'lcd',
		name = 'Long Cool Downs',
		text = 'ON/OFF using long cooldowns in rotation',
		icon = 'Interface\\Icons\\spell_deathknight_empowerruneblade2',
	})
    
    NeP.Interface:AddToggle({
		key = 'scd',
		name = 'Short Cool Downs',
		text = 'ON/OFF using short cooldowns in rotation',
		icon = 'Interface\\Icons\\ability_deathknight_pillaroffrost',
	})

end
local GUI = {
	{type = 'header', text = 'Keybinds:'},
	{type = 'text', text = 'Alt: Pause'},
}

local Keybinds = {
	{'%pause', 'keybind(alt)'},
}

local Precombat = {
}

local Survival = {

}

local Interrupts = {
	{'Kick'},
	
}

local SCD = {
{'Aberration', 'Rabbs1=68976', 'target'},
{'Adrenaline Rush', 'Rabbs1=13750', 'target'},
{'Ambush', 'Rabbs1=8676', 'target'},
{'Apprentice Riding', 'Rabbs1=33388', 'target'},
{'Armor Skills', 'Rabbs1=76273', 'target'},
{'Artisan Riding', 'Rabbs1=34091', 'target'},
{'Auto Attack', 'Rabbs1=6603', 'target'},
{'Between the Eyes', 'Rabbs1=199804', 'target'},
{'Blade Flurry', 'Rabbs1=13877', 'target'},
{'Blind', 'Rabbs1=2094', 'target'},
{'Bribe', 'Rabbs1=199740', 'target'},
{'Cheap Shot', 'Rabbs1=1833', 'target'},
{'Cloak of Shadows', 'Rabbs1=31224', 'target'},
{'Cold Weather Flying', 'Rabbs1=54197', 'target'},
{'Combat Potency', 'Rabbs1=35551', 'target'},
{'Crimson Vial', 'Rabbs1=185311', 'target'},
{'Darkflight', 'Rabbs1=68992', 'target'},
{'Distract', 'Rabbs1=1725', 'target'},
{'Feint', 'Rabbs1=1966', 'target'},
{'Flayer', 'Rabbs1=68978', 'target'},
{'Fleet Footed', 'Rabbs1=31209', 'target'},
{'Flight Master\'s License', 'Rabbs1=90267', 'target'},
{'Gouge', 'Rabbs1=1776', 'target'},
{'Grappling Hook', 'Rabbs1=195457', 'target'},
{'Kick', 'Rabbs1=1766', 'target'},
{'Languages', 'Rabbs1=79742', 'target'},
{'Marked for Death', 'Rabbs1=137619', 'target'},
{'Mastery:  Main Gauche', 'Rabbs1=76806', 'target'},
{'Pick Lock', 'Rabbs1=1804', 'target'},
{'Pick Pocket', 'Rabbs1=921', 'target'},
{'Pistol Shot', 'Rabbs1=185763', 'target'},
{'Revive Battle Pets', 'Rabbs1=125439', 'target'},
{'Riposte', 'Rabbs1=199754', 'target'},
{'Roll the Bones', 'Rabbs1=193316', 'target'},
{'Run Through', 'Rabbs1=2098', 'target'},
{'Running Wild', 'Rabbs1=87840', 'target'},
{'Ruthlessness', 'Rabbs1=14161', 'target'},
{'Saber Slash', 'Rabbs1=193315', 'target'},
{'Sap', 'Rabbs1=6770', 'target'},
{'Sprint', 'Rabbs1=2983', 'target'},
{'Stealth', 'Rabbs1=1784', 'target'},
{'Tricks of the Trade', 'Rabbs1=57934', 'target'},
{'Two Forms', 'Rabbs1=68996', 'target'},
{'Vanish', 'Rabbs1=1856', 'target'},
{'Viciousness', 'Rabbs1=68975', 'target'},
{'Weapon Skills', 'Rabbs1=76297', 'target'},
{'Wisdom of the Four Winds', 'Rabbs1=115913', 'target'},
 
}

local LCD = {
{'Aberration', 'Rabbs4=68976', 'target'},
{'Adrenaline Rush', 'Rabbs4=13750', 'target'},
{'Ambush', 'Rabbs4=8676', 'target'},
{'Apprentice Riding', 'Rabbs4=33388', 'target'},
{'Armor Skills', 'Rabbs4=76273', 'target'},
{'Artisan Riding', 'Rabbs4=34091', 'target'},
{'Auto Attack', 'Rabbs4=6603', 'target'},
{'Between the Eyes', 'Rabbs4=199804', 'target'},
{'Blade Flurry', 'Rabbs4=13877', 'target'},
{'Blind', 'Rabbs4=2094', 'target'},
{'Bribe', 'Rabbs4=199740', 'target'},
{'Cheap Shot', 'Rabbs4=1833', 'target'},
{'Cloak of Shadows', 'Rabbs4=31224', 'target'},
{'Cold Weather Flying', 'Rabbs4=54197', 'target'},
{'Combat Potency', 'Rabbs4=35551', 'target'},
{'Crimson Vial', 'Rabbs4=185311', 'target'},
{'Darkflight', 'Rabbs4=68992', 'target'},
{'Distract', 'Rabbs4=1725', 'target'},
{'Feint', 'Rabbs4=1966', 'target'},
{'Flayer', 'Rabbs4=68978', 'target'},
{'Fleet Footed', 'Rabbs4=31209', 'target'},
{'Flight Master\'s License', 'Rabbs4=90267', 'target'},
{'Gouge', 'Rabbs4=1776', 'target'},
{'Grappling Hook', 'Rabbs4=195457', 'target'},
{'Kick', 'Rabbs4=1766', 'target'},
{'Languages', 'Rabbs4=79742', 'target'},
{'Marked for Death', 'Rabbs4=137619', 'target'},
{'Mastery:  Main Gauche', 'Rabbs4=76806', 'target'},
{'Pick Lock', 'Rabbs4=1804', 'target'},
{'Pick Pocket', 'Rabbs4=921', 'target'},
{'Pistol Shot', 'Rabbs4=185763', 'target'},
{'Revive Battle Pets', 'Rabbs4=125439', 'target'},
{'Riposte', 'Rabbs4=199754', 'target'},
{'Roll the Bones', 'Rabbs4=193316', 'target'},
{'Run Through', 'Rabbs4=2098', 'target'},
{'Running Wild', 'Rabbs4=87840', 'target'},
{'Ruthlessness', 'Rabbs4=14161', 'target'},
{'Saber Slash', 'Rabbs4=193315', 'target'},
{'Sap', 'Rabbs4=6770', 'target'},
{'Sprint', 'Rabbs4=2983', 'target'},
{'Stealth', 'Rabbs4=1784', 'target'},
{'Tricks of the Trade', 'Rabbs4=57934', 'target'},
{'Two Forms', 'Rabbs4=68996', 'target'},
{'Vanish', 'Rabbs4=1856', 'target'},
{'Viciousness', 'Rabbs4=68975', 'target'},
{'Weapon Skills', 'Rabbs4=76297', 'target'},
{'Wisdom of the Four Winds', 'Rabbs4=115913', 'target'},



}

local AOE = {
{'Aberration', 'Rabbs3=68976', 'target'},
{'Adrenaline Rush', 'Rabbs3=13750', 'target'},
{'Ambush', 'Rabbs3=8676', 'target'},
{'Apprentice Riding', 'Rabbs3=33388', 'target'},
{'Armor Skills', 'Rabbs3=76273', 'target'},
{'Artisan Riding', 'Rabbs3=34091', 'target'},
{'Auto Attack', 'Rabbs3=6603', 'target'},
{'Between the Eyes', 'Rabbs3=199804', 'target'},
{'Blade Flurry', 'Rabbs3=13877', 'target'},
{'Blind', 'Rabbs3=2094', 'target'},
{'Bribe', 'Rabbs3=199740', 'target'},
{'Cheap Shot', 'Rabbs3=1833', 'target'},
{'Cloak of Shadows', 'Rabbs3=31224', 'target'},
{'Cold Weather Flying', 'Rabbs3=54197', 'target'},
{'Combat Potency', 'Rabbs3=35551', 'target'},
{'Crimson Vial', 'Rabbs3=185311', 'target'},
{'Darkflight', 'Rabbs3=68992', 'target'},
{'Distract', 'Rabbs3=1725', 'target'},
{'Feint', 'Rabbs3=1966', 'target'},
{'Flayer', 'Rabbs3=68978', 'target'},
{'Fleet Footed', 'Rabbs3=31209', 'target'},
{'Flight Mastes\'s License', 'Rabbs3=90267', 'target'},
{'Gouge', 'Rabbs3=1776', 'target'},
{'Grappling Hook', 'Rabbs3=195457', 'target'},
{'Kick', 'Rabbs3=1766', 'target'},
{'Languages', 'Rabbs3=79742', 'target'},
{'Marked for Death', 'Rabbs3=137619', 'target'},
{'Mastery:  Main Gauche', 'Rabbs3=76806', 'target'},
{'Pick Lock', 'Rabbs3=1804', 'target'},
{'Pick Pocket', 'Rabbs3=921', 'target'},
{'Pistol Shot', 'Rabbs3=185763', 'target'},
{'Revive Battle Pets', 'Rabbs3=125439', 'target'},
{'Riposte', 'Rabbs3=199754', 'target'},
{'Roll the Bones', 'Rabbs3=193316', 'target'},
{'Run Through', 'Rabbs3=2098', 'target'},
{'Running Wild', 'Rabbs3=87840', 'target'},
{'Ruthlessness', 'Rabbs3=14161', 'target'},
{'Saber Slash', 'Rabbs3=193315', 'target'},
{'Sap', 'Rabbs3=6770', 'target'},
{'Sprint', 'Rabbs3=2983', 'target'},
{'Stealth', 'Rabbs3=1784', 'target'},
{'Tricks of the Trade', 'Rabbs3=57934', 'target'},
{'Two Forms', 'Rabbs3=68996', 'target'},
{'Vanish', 'Rabbs3=1856', 'target'},
{'Viciousness', 'Rabbs3=68975', 'target'},
{'Weapon Skills', 'Rabbs3=76297', 'target'},
{'Wisdom of the Four Winds', 'Rabbs3=115913', 'target'},

}

local ST = {
{'Aberration', 'Rabbs2=68976', 'target'},
{'Adrenaline Rush', 'Rabbs2=13750', 'target'},
{'Ambush', 'Rabbs2=8676', 'target'},
{'Apprentice Riding', 'Rabbs2=33388', 'target'},
{'Armor Skills', 'Rabbs2=76273', 'target'},
{'Artisan Riding', 'Rabbs2=34091', 'target'},
{'Auto Attack', 'Rabbs2=6603', 'target'},
{'Between the Eyes', 'Rabbs2=199804', 'target'},
{'Blade Flurry', 'Rabbs2=13877', 'target'},
{'Blind', 'Rabbs2=2094', 'target'},
{'Bribe', 'Rabbs2=199740', 'target'},
{'Cheap Shot', 'Rabbs2=1833', 'target'},
{'Cloak of Shadows', 'Rabbs2=31224', 'target'},
{'Cold Weather Flying', 'Rabbs2=54197', 'target'},
{'Combat Potency', 'Rabbs2=35551', 'target'},
{'Crimson Vial', 'Rabbs2=185311', 'target'},
{'Darkflight', 'Rabbs2=68992', 'target'},
{'Distract', 'Rabbs2=1725', 'target'},
{'Feint', 'Rabbs2=1966', 'target'},
{'Flayer', 'Rabbs2=68978', 'target'},
{'Fleet Footed', 'Rabbs2=31209', 'target'},
{'Flight Master\'s License', 'Rabbs2=90267', 'target'},
{'Gouge', 'Rabbs2=1776', 'target'},
{'Grappling Hook', 'Rabbs2=195457', 'target'},
{'Kick', 'Rabbs2=1766', 'target'},
{'Languages', 'Rabbs2=79742', 'target'},
{'Marked for Death', 'Rabbs2=137619', 'target'},
{'Mastery:  Main Gauche', 'Rabbs2=76806', 'target'},
{'Pick Lock', 'Rabbs2=1804', 'target'},
{'Pick Pocket', 'Rabbs2=921', 'target'},
{'Pistol Shot', 'Rabbs2=185763', 'target'},
{'Revive Battle Pets', 'Rabbs2=125439', 'target'},
{'Riposte', 'Rabbs2=199754', 'target'},
{'Roll the Bones', 'Rabbs2=193316', 'target'},
{'Run Through', 'Rabbs2=2098', 'target'},
{'Running Wild', 'Rabbs2=87840', 'target'},
{'Ruthlessness', 'Rabbs2=14161', 'target'},
{'Saber Slash', 'Rabbs2=193315', 'target'},
{'Sap', 'Rabbs2=6770', 'target'},
{'Sprint', 'Rabbs2=2983', 'target'},
{'Stealth', 'Rabbs2=1784', 'target'},
{'Tricks of the Trade', 'Rabbs2=57934', 'target'},
{'Two Forms', 'Rabbs2=68996', 'target'},
{'Vanish', 'Rabbs2=1856', 'target'},
{'Viciousness', 'Rabbs2=68975', 'target'},
{'Weapon Skills', 'Rabbs2=76297', 'target'},
{'Wisdom of the Four Winds', 'Rabbs2=115913', 'target'},


}


local inCombat = {
	{Keybinds},
    {Interrupts, 'target.interruptAt(15)'},
    {Survival, 'player.health<100'},
    {LCD, 'toggle(lcd)'},
	{SCD, 'toggle(scd)'},
    {AOE, {'player.area(8).enemies>=1&toggle(aoe)'}},
	{ST, {'target.range < 8', 'target.infront'}},
}

local outCombat = {
	{Keybinds},
	{Precombat},
}

NeP.CR:Add(260, {
	name = '[|cff'..Rabbs.addonColor..'Rabbs|r] Rogue - Outlaw',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})

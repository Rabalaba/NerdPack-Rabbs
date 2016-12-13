local _, Rabbs = ...
local GUI = {

}

local exeOnLoad = function()
	Rabbs.ExeOnLoad()

    
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
{ "/targetenemy [noexists]", "!target.exists" },
}

local Interrupts = {
	{'Counterspell'},
	
}

local SCD = {
{'Armor Skills', 'Rabbs1=76276', 'target'},
{'Artisan Riding', 'Rabbs1=34091', 'target'},
{'Auto Attack', 'Rabbs1=6603', 'target'},
{'Blink', 'Rabbs1=1953', 'target'},
{'Cinderstorm', 'Rabbs1=198929', 'target'},
{'Cold Weather Flying', 'Rabbs1=54197', 'target'},
{'Combustion', 'Rabbs1=190319', 'target'},
{'Conjure Refreshment', 'Rabbs1=190336', 'target'},
{'Counterspell', 'Rabbs1=2139', 'target'},
{'Critical Mass', 'Rabbs1=117216', 'target'},
{'Dragon\'s Breath', 'Rabbs1=31661', 'target'},
{'Enhanced Pyrotechnics', 'Rabbs1=157642', 'target'},
{'Fire Blast', 'Rabbs1=108853', 'target'},
{'Fireball', 'Rabbs1=133', 'target'},
{'Flame On', 'Rabbs1=205029', 'target'},
{'Flamestrike', 'Rabbs1=2120', 'target'},
{'Flight Master\'s License', 'Rabbs1=90267', 'target'},
{'Frost Nova', 'Rabbs1=122', 'target'},
{'Gemcutting', 'Rabbs1=28875', 'target'},
{'Gift of the Naaru', 'Rabbs1=59548', 'target'},
{'Guild Mail', 'Rabbs1=83951', 'target'},
{'Hasty Hearth', 'Rabbs1=83944', 'target'},
{'Heroic Presence', 'Rabbs1=6562', 'target'},
{'Hot Streak', 'Rabbs1=195283', 'target'},
{'Ice Barrier', 'Rabbs1=11426', 'target'},
{'Ice Block', 'Rabbs1=45438', 'target'},
{'Ice Floes', 'Rabbs1=108839', 'target'},
{'Invisibility', 'Rabbs1=66', 'target'},
{'Languages', 'Rabbs1=79741', 'target'},
{'Living Bomb', 'Rabbs1=44457', 'target'},
{'Mastery:  Ignite', 'Rabbs1=12846', 'target'},
{'Mobile Banking', 'Rabbs1=83958', 'target'},
{'Molten Armor', 'Rabbs1=30482', 'target'},
{'Mount Up', 'Rabbs1=78633', 'target'},
{'Phoenix\'s Flames', 'Rabbs1=194466', 'target'},
{'Polymorph', 'Rabbs1=118', 'target'},
{'Pyroblast', 'Rabbs1=11366', 'target'},
{'Revive Battle Pets', 'Rabbs1=125439', 'target'},
{'Scorch', 'Rabbs1=2948', 'target'},
{'Shadow Resistance', 'Rabbs1=59221', 'target'},
{'Shoot', 'Rabbs1=5019', 'target'},
{'Silver Dollar Club', 'Rabbs1=169606', 'target'},
{'Slow Fall', 'Rabbs1=130', 'target'},
{'Spellsteal', 'Rabbs1=30449', 'target'},
{'The Quick and the Dead', 'Rabbs1=83950', 'target'},
{'Time Warp', 'Rabbs1=80353', 'target'},
{'Weapon Skills', 'Rabbs1=76298', 'target'},
{'Wisdom of the Four Winds', 'Rabbs1=115913', 'target'},


 
}

local LCD = {
{'Armor Skills', 'Rabbs4=76276', 'target'},
{'Artisan Riding', 'Rabbs4=34091', 'target'},
{'Auto Attack', 'Rabbs4=6603', 'target'},
{'Blink', 'Rabbs4=1953', 'target'},
{'Cinderstorm', 'Rabbs4=198929', 'target'},
{'Cold Weather Flying', 'Rabbs4=54197', 'target'},
{'Combustion', 'Rabbs4=190319', 'target'},
{'Conjure Refreshment', 'Rabbs4=190336', 'target'},
{'Counterspell', 'Rabbs4=2139', 'target'},
{'Critical Mass', 'Rabbs4=117216', 'target'},
{'Dragon\'s Breath', 'Rabbs4=31661', 'target'},
{'Enhanced Pyrotechnics', 'Rabbs4=157642', 'target'},
{'Fire Blast', 'Rabbs4=108853', 'target'},
{'Fireball', 'Rabbs4=133', 'target'},
{'Flame On', 'Rabbs4=205029', 'target'},
{'Flamestrike', 'Rabbs4=2120', 'target'},
{'Flight Master\'s License', 'Rabbs4=90267', 'target'},
{'Frost Nova', 'Rabbs4=122', 'target'},
{'Gemcutting', 'Rabbs4=28875', 'target'},
{'Gift of the Naaru', 'Rabbs4=59548', 'target'},
{'Guild Mail', 'Rabbs4=83951', 'target'},
{'Hasty Hearth', 'Rabbs4=83944', 'target'},
{'Heroic Presence', 'Rabbs4=6562', 'target'},
{'Hot Streak', 'Rabbs4=195283', 'target'},
{'Ice Barrier', 'Rabbs4=11426', 'target'},
{'Ice Block', 'Rabbs4=45438', 'target'},
{'Ice Floes', 'Rabbs4=108839', 'target'},
{'Invisibility', 'Rabbs4=66', 'target'},
{'Languages', 'Rabbs4=79741', 'target'},
{'Living Bomb', 'Rabbs4=44457', 'target'},
{'Mastery:  Ignite', 'Rabbs4=12846', 'target'},
{'Mobile Banking', 'Rabbs4=83958', 'target'},
{'Molten Armor', 'Rabbs4=30482', 'target'},
{'Mount Up', 'Rabbs4=78633', 'target'},
{'Phoenix\'s Flames', 'Rabbs4=194466', 'target'},
{'Polymorph', 'Rabbs4=118', 'target'},
{'Pyroblast', 'Rabbs4=11366', 'target'},
{'Revive Battle Pets', 'Rabbs4=125439', 'target'},
{'Scorch', 'Rabbs4=2948', 'target'},
{'Shadow Resistance', 'Rabbs4=59221', 'target'},
{'Shoot', 'Rabbs4=5019', 'target'},
{'Silver Dollar Club', 'Rabbs4=169606', 'target'},
{'Slow Fall', 'Rabbs4=130', 'target'},
{'Spellsteal', 'Rabbs4=30449', 'target'},
{'The Quick and the Dead', 'Rabbs4=83950', 'target'},
{'Time Warp', 'Rabbs4=80353', 'target'},
{'Weapon Skills', 'Rabbs4=76298', 'target'},
{'Wisdom of the Four Winds', 'Rabbs4=115913', 'target'},





}

local AOE = {
{'Armor Skills', 'Rabbs3=76276', 'target'},
{'Artisan Riding', 'Rabbs3=34091', 'target'},
{'Auto Attack', 'Rabbs3=6603', 'target'},
{'Blink', 'Rabbs3=1953', 'target'},
{'Cinderstorm', 'Rabbs3=198929', 'target'},
{'Cold Weather Flying', 'Rabbs3=54197', 'target'},
{'Combustion', 'Rabbs3=190319', 'target'},
{'Conjure Refreshment', 'Rabbs3=190336', 'target'},
{'Counterspell', 'Rabbs3=2139', 'target'},
{'Critical Mass', 'Rabbs3=117216', 'target'},
{'Dragon\'s Breath', 'Rabbs3=31661', 'target'},
{'Enhanced Pyrotechnics', 'Rabbs3=157642', 'target'},
{'Fire Blast', 'Rabbs3=108853', 'target'},
{'Fireball', 'Rabbs3=133', 'target'},
{'Flame On', 'Rabbs3=205029', 'target'},
{'Flamestrike', 'Rabbs3=2120', 'target'},
{'Flight Master\'s License', 'Rabbs3=90267', 'target'},
{'Frost Nova', 'Rabbs3=122', 'target'},
{'Gemcutting', 'Rabbs3=28875', 'target'},
{'Gift of the Naaru', 'Rabbs3=59548', 'target'},
{'Guild Mail', 'Rabbs3=83951', 'target'},
{'Hasty Hearth', 'Rabbs3=83944', 'target'},
{'Heroic Presence', 'Rabbs3=6562', 'target'},
{'Hot Streak', 'Rabbs3=195283', 'target'},
{'Ice Barrier', 'Rabbs3=11426', 'target'},
{'Ice Block', 'Rabbs3=45438', 'target'},
{'Ice Floes', 'Rabbs3=108839', 'target'},
{'Invisibility', 'Rabbs3=66', 'target'},
{'Languages', 'Rabbs3=79741', 'target'},
{'Living Bomb', 'Rabbs3=44457', 'target'},
{'Mastery:  Ignite', 'Rabbs3=12846', 'target'},
{'Mobile Banking', 'Rabbs3=83958', 'target'},
{'Molten Armor', 'Rabbs3=30482', 'target'},
{'Mount Up', 'Rabbs3=78633', 'target'},
{'Phoenix\'s Flames', 'Rabbs3=194466', 'target'},
{'Polymorph', 'Rabbs3=118', 'target'},
{'Pyroblast', 'Rabbs3=11366', 'target'},
{'Revive Battle Pets', 'Rabbs3=125439', 'target'},
{'Scorch', 'Rabbs3=2948', 'target'},
{'Shadow Resistance', 'Rabbs3=59221', 'target'},
{'Shoot', 'Rabbs3=5019', 'target'},
{'Silver Dollar Club', 'Rabbs3=169606', 'target'},
{'Slow Fall', 'Rabbs3=130', 'target'},
{'Spellsteal', 'Rabbs3=30449', 'target'},
{'The Quick and the Dead', 'Rabbs3=83950', 'target'},
{'Time Warp', 'Rabbs3=80353', 'target'},
{'Weapon Skills', 'Rabbs3=76298', 'target'},
{'Wisdom of the Four Winds', 'Rabbs3=115913', 'target'},




}

local ST = {
{'Armor Skills', 'Rabbs2=76276', 'target'},
{'Artisan Riding', 'Rabbs2=34091', 'target'},
{'Auto Attack', 'Rabbs2=6603', 'target'},
{'Blink', 'Rabbs2=1953', 'target'},
{'Cinderstorm', 'Rabbs2=198929', 'target'},
{'Cold Weather Flying', 'Rabbs2=54197', 'target'},
{'Combustion', 'Rabbs2=190319', 'target'},
{'Conjure Refreshment', 'Rabbs2=190336', 'target'},
{'Counterspell', 'Rabbs2=2139', 'target'},
{'Critical Mass', 'Rabbs2=117216', 'target'},
{'Dragon\'s Breath', 'Rabbs2=31661', 'target'},
{'Enhanced Pyrotechnics', 'Rabbs2=157642', 'target'},
{'Fire Blast', 'Rabbs2=108853', 'target'},
{'Fireball', 'Rabbs2=133', 'target'},
{'Flame On', 'Rabbs2=205029', 'target'},
{'Flamestrike', 'Rabbs2=2120', 'target'},
{'Flight Master\'s License', 'Rabbs2=90267', 'target'},
{'Frost Nova', 'Rabbs2=122', 'target'},
{'Gemcutting', 'Rabbs2=28875', 'target'},
{'Gift of the Naaru', 'Rabbs2=59548', 'target'},
{'Guild Mail', 'Rabbs2=83951', 'target'},
{'Hasty Hearth', 'Rabbs2=83944', 'target'},
{'Heroic Presence', 'Rabbs2=6562', 'target'},
{'Hot Streak', 'Rabbs2=195283', 'target'},
{'Ice Barrier', 'Rabbs2=11426', 'target'},
{'Ice Block', 'Rabbs2=45438', 'target'},
{'Ice Floes', 'Rabbs2=108839', 'target'},
{'Invisibility', 'Rabbs2=66', 'target'},
{'Languages', 'Rabbs2=79741', 'target'},
{'Living Bomb', 'Rabbs2=44457', 'target'},
{'Mastery:  Ignite', 'Rabbs2=12846', 'target'},
{'Mobile Banking', 'Rabbs2=83958', 'target'},
{'Molten Armor', 'Rabbs2=30482', 'target'},
{'Mount Up', 'Rabbs2=78633', 'target'},
{'Phoenix\'s Flames', 'Rabbs2=194466', 'target'},
{'Polymorph', 'Rabbs2=118', 'target'},
{'Pyroblast', 'Rabbs2=11366', 'target'},
{'Revive Battle Pets', 'Rabbs2=125439', 'target'},
{'Scorch', 'Rabbs2=2948', 'target'},
{'Shadow Resistance', 'Rabbs2=59221', 'target'},
{'Shoot', 'Rabbs2=5019', 'target'},
{'Silver Dollar Club', 'Rabbs2=169606', 'target'},
{'Slow Fall', 'Rabbs2=130', 'target'},
{'Spellsteal', 'Rabbs2=30449', 'target'},
{'The Quick and the Dead', 'Rabbs2=83950', 'target'},
{'Time Warp', 'Rabbs2=80353', 'target'},
{'Weapon Skills', 'Rabbs2=76298', 'target'},
{'Wisdom of the Four Winds', 'Rabbs2=115913', 'target'},





}


local inCombat = {
	{Keybinds},
    {Interrupts, 'target.interruptAt(15)'},
    {Survival, 'player.health<100'},
    {LCD, 'toggle(lcd)'},
	{SCD, 'toggle(scd)'},
    {AOE, {'toggle(aoe)'}},
	{ST, {'target.infront'}},
}

local outCombat = {
	{Keybinds},
	{Precombat},
}

NeP.CR:Add(63, {
	name = '[|cff'..Rabbs.addonColor..'Rabbs|r] Rogue - Outlaw',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})

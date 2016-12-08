local _, Rabbs = ...
local GUI = {

}

local exeOnLoad = function()
	Rabbs.ExeOnLoad()

	print('|cffADFF2F ----------------------------------------------------------------------|r')
	print('|cffADFF2F --- |rDK |cffFFA500Frost |r')
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
    {'Death Strike', 'player.buff(Dark Succor)', 'target'},
    {'Death Strike', 'player.health<35', 'target'},
}

local Interrupts = {
	{'47528'},
	
}

local SCD = {
{'Anti-Magic Shell', 'Rabbs1=48707', 'target'},
{'Armor Skills', 'Rabbs1=76282', 'target'},
{'Artisan Riding', 'Rabbs1=34091', 'target'},
{'Auto Attack', 'Rabbs1=6603', 'target'},
{'Blinding Sleet', 'Rabbs1=207167', 'target'},
{'Chains of Ice', 'Rabbs1=45524', 'target'},
{'Cold Weather Flying', 'Rabbs1=54197', 'target'},
{'Control Undead', 'Rabbs1=111673', 'target'},
{'Dark Command', 'Rabbs1=56222', 'target'},
{'Dark Succor', 'Rabbs1=178819', 'target'},
{'Death Gate', 'Rabbs1=50977', 'target'},
{'Death Grip', 'Rabbs1=49576', 'target'},
{'Death Strike', 'Rabbs1=49998', 'target'},
{'Diplomacy', 'Rabbs1=20599', 'target'},
{'Empower Rune Weapon', 'Rabbs1=47568', 'target'},
{'Every Man for Himself', 'Rabbs1=59752', 'target'},
{'Flight Master\'s License', 'Rabbs1=90267', 'target'},
{'Frost Strike', 'Rabbs1=49143', 'target'},
{'Frostscythe', 'Rabbs1=207230', 'target'},
{'Guild Mail', 'Rabbs1=83951', 'target'},
{'Hasty Hearth', 'Rabbs1=83944', 'target'},
{'Horn of Winter', 'Rabbs1=57330', 'target'},
{'Howling Blast', 'Rabbs1=49184', 'target'},
{'Icebound Fortitude', 'Rabbs1=48792', 'target'},
{'Killing Machine', 'Rabbs1=51128', 'target'},
{'Languages', 'Rabbs1=79738', 'target'},
{'Mastery:  Frozen Heart', 'Rabbs1=77514', 'target'},
{'Mind Freeze', 'Rabbs1=47528', 'target'},
{'Mobile Banking', 'Rabbs1=83958', 'target'},
{'Mount Up', 'Rabbs1=78633', 'target'},
{'Obliterate', 'Rabbs1=49020', 'target'},
{'Obliteration', 'Rabbs1=207256', 'target'},
{'On a Pale Horse', 'Rabbs1=51986', 'target'},
{'Path of Frost', 'Rabbs1=3714', 'target'},
{'Pillar of Frost', 'Rabbs1=51271', 'target'},
{'Raise Ally', 'Rabbs1=61999', 'target'},
{'Remorseless Winter', 'Rabbs1=196770', 'target'},
{'Revive Battle Pets', 'Rabbs1=125439', 'target'},
{'Rime', 'Rabbs1=59057', 'target'},
{'Runeforging', 'Rabbs1=53428', 'target'},
{'Runic Empowerment', 'Rabbs1=81229', 'target'},
{'The Human Spirit', 'Rabbs1=20598', 'target'},
{'The Quick and the Dead', 'Rabbs1=83950', 'target'},
{'Weapon Skills', 'Rabbs1=76292', 'target'},
{'Wisdom of the Four Winds', 'Rabbs1=115913', 'target'},
{'Wraith Walk', 'Rabbs1=212552', 'target'},
 
}

local LCD = {
{'Anti-Magic Shell', 'Rabbs4=48707', 'target'},
{'Armor Skills', 'Rabbs4=76282', 'target'},
{'Artisan Riding', 'Rabbs4=34091', 'target'},
{'Auto Attack', 'Rabbs4=6603', 'target'},
{'Blinding Sleet', 'Rabbs4=207167', 'target'},
{'Chains of Ice', 'Rabbs4=45524', 'target'},
{'Cold Weather Flying', 'Rabbs4=54197', 'target'},
{'Control Undead', 'Rabbs4=111673', 'target'},
{'Dark Command', 'Rabbs4=56222', 'target'},
{'Dark Succor', 'Rabbs4=178819', 'target'},
{'Death Gate', 'Rabbs4=50977', 'target'},
{'Death Grip', 'Rabbs4=49576', 'target'},
{'Death Strike', 'Rabbs4=49998', 'target'},
{'Diplomacy', 'Rabbs4=20599', 'target'},
{'Empower Rune Weapon', 'Rabbs4=47568', 'target'},
{'Every Man for Himself', 'Rabbs4=59752', 'target'},
{'Flight Master\'s License', 'Rabbs4=90267', 'target'},
{'Frost Strike', 'Rabbs4=49143', 'target'},
{'Frostscythe', 'Rabbs4=207230', 'target'},
{'Guild Mail', 'Rabbs4=83951', 'target'},
{'Hasty Hearth', 'Rabbs4=83944', 'target'},
{'Horn of Winter', 'Rabbs4=57330', 'target'},
{'Howling Blast', 'Rabbs4=49184', 'target'},
{'Icebound Fortitude', 'Rabbs4=48792', 'target'},
{'Killing Machine', 'Rabbs4=51128', 'target'},
{'Languages', 'Rabbs4=79738', 'target'},
{'Mastery:  Frozen Heart', 'Rabbs4=77514', 'target'},
{'Mind Freeze', 'Rabbs4=47528', 'target'},
{'Mobile Banking', 'Rabbs4=83958', 'target'},
{'Mount Up', 'Rabbs4=78633', 'target'},
{'Obliterate', 'Rabbs4=49020', 'target'},
{'Obliteration', 'Rabbs4=207256', 'target'},
{'On a Pale Horse', 'Rabbs4=51986', 'target'},
{'Path of Frost', 'Rabbs4=3714', 'target'},
{'Pillar of Frost', 'Rabbs4=51271', 'target'},
{'Raise Ally', 'Rabbs4=61999', 'target'},
{'Remorseless Winter', 'Rabbs4=196770', 'target'},
{'Revive Battle Pets', 'Rabbs4=125439', 'target'},
{'Rime', 'Rabbs4=59057', 'target'},
{'Runeforging', 'Rabbs4=53428', 'target'},
{'Runic Empowerment', 'Rabbs4=81229', 'target'},
{'The Human Spirit', 'Rabbs4=20598', 'target'},
{'The Quick and the Dead', 'Rabbs4=83950', 'target'},
{'Weapon Skills', 'Rabbs4=76292', 'target'},
{'Wisdom of the Four Winds', 'Rabbs4=115913', 'target'},
{'Wraith Walk', 'Rabbs4=212552', 'target'},

}

local AOE = {
{'Anti-Magic Shell', 'Rabbs3=48707', 'target'},
{'Armor Skills', 'Rabbs3=76282', 'target'},
{'Artisan Riding', 'Rabbs3=34091', 'target'},
{'Auto Attack', 'Rabbs3=6603', 'target'},
{'Blinding Sleet', 'Rabbs3=207167', 'target'},
{'Chains of Ice', 'Rabbs3=45524', 'target'},
{'Cold Weather Flying', 'Rabbs3=54197', 'target'},
{'Control Undead', 'Rabbs3=111673', 'target'},
{'Dark Command', 'Rabbs3=56222', 'target'},
{'Dark Succor', 'Rabbs3=178819', 'target'},
{'Death Gate', 'Rabbs3=50977', 'target'},
{'Death Grip', 'Rabbs3=49576', 'target'},
{'Death Strike', 'Rabbs3=49998', 'target'},
{'Diplomacy', 'Rabbs3=20599', 'target'},
{'Empower Rune Weapon', 'Rabbs3=47568', 'target'},
{'Every Man for Himself', 'Rabbs3=59752', 'target'},
{'Flight Master\'s License', 'Rabbs3=90267', 'target'},
{'Frost Strike', 'Rabbs3=49143', 'target'},
{'Frostscythe', 'Rabbs3=207230', 'target'},
{'Guild Mail', 'Rabbs3=83951', 'target'},
{'Hasty Hearth', 'Rabbs3=83944', 'target'},
{'Horn of Winter', 'Rabbs3=57330', 'target'},
{'Howling Blast', 'Rabbs3=49184', 'target'},
{'Icebound Fortitude', 'Rabbs3=48792', 'target'},
{'Killing Machine', 'Rabbs3=51128', 'target'},
{'Languages', 'Rabbs3=79738', 'target'},
{'Mastery:  Frozen Heart', 'Rabbs3=77514', 'target'},
{'Mind Freeze', 'Rabbs3=47528', 'target'},
{'Mobile Banking', 'Rabbs3=83958', 'target'},
{'Mount Up', 'Rabbs3=78633', 'target'},
{'Obliterate', 'Rabbs3=49020', 'target'},
{'Obliteration', 'Rabbs3=207256', 'target'},
{'On a Pale Horse', 'Rabbs3=51986', 'target'},
{'Path of Frost', 'Rabbs3=3714', 'target'},
{'Pillar of Frost', 'Rabbs3=51271', 'target'},
{'Raise Ally', 'Rabbs3=61999', 'target'},
{'Remorseless Winter', 'Rabbs3=196770', 'target'},
{'Revive Battle Pets', 'Rabbs3=125439', 'target'},
{'Rime', 'Rabbs3=59057', 'target'},
{'Runeforging', 'Rabbs3=53428', 'target'},
{'Runic Empowerment', 'Rabbs3=81229', 'target'},
{'The Human Spirit', 'Rabbs3=20598', 'target'},
{'The Quick and the Dead', 'Rabbs3=83950', 'target'},
{'Weapon Skills', 'Rabbs3=76292', 'target'},
{'Wisdom of the Four Winds', 'Rabbs3=115913', 'target'},
{'Wraith Walk', 'Rabbs3=212552', 'target'},	
}

local ST = {
{'Anti-Magic Shell', 'Rabbs2=48707', 'target'},
{'Armor Skills', 'Rabbs2=76282', 'target'},
{'Artisan Riding', 'Rabbs2=34091', 'target'},
{'Auto Attack', 'Rabbs2=6603', 'target'},
{'Blinding Sleet', 'Rabbs2=207167', 'target'},
{'Chains of Ice', 'Rabbs2=45524', 'target'},
{'Cold Weather Flying', 'Rabbs2=54197', 'target'},
{'Control Undead', 'Rabbs2=111673', 'target'},
{'Dark Command', 'Rabbs2=56222', 'target'},
{'Dark Succor', 'Rabbs2=178819', 'target'},
{'Death Gate', 'Rabbs2=50977', 'target'},
{'Death Grip', 'Rabbs2=49576', 'target'},
{'Death Strike', 'Rabbs2=49998', 'target'},
{'Diplomacy', 'Rabbs2=20599', 'target'},
{'Empower Rune Weapon', 'Rabbs2=47568', 'target'},
{'Every Man for Himself', 'Rabbs2=59752', 'target'},
{'Flight Master\'s License', 'Rabbs2=90267', 'target'},
{'Frost Strike', 'Rabbs2=49143', 'target'},
{'Frostscythe', 'Rabbs2=207230', 'target'},
{'Guild Mail', 'Rabbs2=83951', 'target'},
{'Hasty Hearth', 'Rabbs2=83944', 'target'},
{'Horn of Winter', 'Rabbs2=57330', 'target'},
{'Howling Blast', 'Rabbs2=49184', 'target'},
{'Icebound Fortitude', 'Rabbs2=48792', 'target'},
{'Killing Machine', 'Rabbs2=51128', 'target'},
{'Languages', 'Rabbs2=79738', 'target'},
{'Mastery:  Frozen Heart', 'Rabbs2=77514', 'target'},
{'Mind Freeze', 'Rabbs2=47528', 'target'},
{'Mobile Banking', 'Rabbs2=83958', 'target'},
{'Mount Up', 'Rabbs2=78633', 'target'},
{'Obliterate', 'Rabbs2=49020', 'target'},
{'Obliteration', 'Rabbs2=207256', 'target'},
{'On a Pale Horse', 'Rabbs2=51986', 'target'},
{'Path of Frost', 'Rabbs2=3714', 'target'},
{'Pillar of Frost', 'Rabbs2=51271', 'target'},
{'Raise Ally', 'Rabbs2=61999', 'target'},
{'Remorseless Winter', 'Rabbs2=196770', 'target'},
{'Revive Battle Pets', 'Rabbs2=125439', 'target'},
{'Rime', 'Rabbs2=59057', 'target'},
{'Runeforging', 'Rabbs2=53428', 'target'},
{'Runic Empowerment', 'Rabbs2=81229', 'target'},
{'The Human Spirit', 'Rabbs2=20598', 'target'},
{'The Quick and the Dead', 'Rabbs2=83950', 'target'},
{'Weapon Skills', 'Rabbs2=76292', 'target'},
{'Wisdom of the Four Winds', 'Rabbs2=115913', 'target'},
{'Wraith Walk', 'Rabbs2=212552', 'target'},

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

NeP.CR:Add(251, {
	name = '[|cff'..Rabbs.addonColor..'Rabbs|r] Death Knight - Frost',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})

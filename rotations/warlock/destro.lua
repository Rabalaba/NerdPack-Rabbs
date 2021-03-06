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
    {'Cataclysm', 'keybind(shift)', 'cursor.ground'},
}

local Precombat = {
}

local Survival = {
{'1454', '!player.buff(235156)'},
{ "/targetenemy [noexists]", "!target.exists" },
{'Drain Life', 'player.health<30', 'target'},
}

local Interrupts = {
	{'Shadow Lock'},
	
}

local SCD = {
{'Armor Skills', 'Rabbs1=76276', 'target'},
{'Artisan Riding', 'Rabbs1=34091', 'target'},
{'Apprentice Riding', 'Rabbs1=33388', 'target'},
{'Armor Skills', 'Rabbs1=76277', 'target'},
{'Artisan Riding', 'Rabbs1=34091', 'target'},
{'Auto Attack', 'Rabbs1=6603', 'target'},
{'Avoidance', 'Rabbs1=190019', 'target'},
{'Banish', 'Rabbs1=710', 'target'},
{'Chaos Bolt', 'Rabbs1=116858', 'target'},
{'Cold Weather Flying', 'Rabbs1=54197', 'target'},
{'Conflagrate', 'Rabbs1=17962', 'target'},
{'Create Healthstone', 'Rabbs1=6201', 'target'},
{'Create Soulwell', 'Rabbs1=29893', 'target'},
{'Cripple', 'Rabbs1=170995', 'target'},
{'Demonic Circle', 'Rabbs1=48018', 'target'},
{'Demonic Gateway', 'Rabbs1=111771', 'target'},
{'Diplomacy', 'Rabbs1=20599', 'target'},
{'Doom Bolt', 'Rabbs1=85692', 'target'},
{'Drain Life', 'Rabbs1=234153', 'target'},
{'Drain Life', 'Rabbs1=689', 'target'},
{'Enslave Demon', 'Rabbs1=1098', 'target'},
{'Every Man for Himself', 'Rabbs1=59752', 'target'},
{'Eye of Kilrogg', 'Rabbs1=126', 'target'},
{'Fear', 'Rabbs1=5782', 'target'},
{'Flight Master\'s License', 'Rabbs1=90267', 'target'},
{'Havoc', 'Rabbs1=80240', 'target'},
{'Health Funnel', 'Rabbs1=755', 'target'},
{'Immolate', 'Rabbs1=348', 'target'},
{'Incinerate', 'Rabbs1=29722', 'target'},
{'Incinerate', 'Rabbs1=686', 'target'},
{'Languages', 'Rabbs1=79738', 'target'},
{'Life Tap', 'Rabbs1=1454&player.health>30&player.mana<30', 'target'},
{'Mana Tap', 'Rabbs1=196104', 'target'},
{'Mastery:  Chaotic Energies', 'Rabbs1=77220', 'target'},
{'Rain of Fire', 'Rabbs1=5740', 'target'},
{'Revive Battle Pets', 'Rabbs1=125439', 'target'},
{'Ritual of Summoning', 'Rabbs1=698', 'target'},
{'Shadow Lock', 'Rabbs1=119898', 'target'},
{'Shadow Lock', 'Rabbs1=171138', 'target'},
{'Shadow Lock', 'Rabbs1=171140', 'target'},
{'Shoot', 'Rabbs1=5019', 'target'},
{'Soul Leech', 'Rabbs1=108370', 'target'},
{'Soulstone', 'Rabbs1=20707', 'target'},
{'Summon Doomguard', 'Rabbs1=157757', 'target'},
{'Summon Doomguard', 'Rabbs1=18540', 'target'},
{'Summon Felhunter', 'Rabbs1=691', 'target'},
{'Summon Imp', 'Rabbs1=688', 'target'},
{'Summon Infernal', 'Rabbs1=1122', 'target'},
{'Summon Infernal', 'Rabbs1=157898', 'target'},
{'Summon Succubus', 'Rabbs1=712', 'target'},
{'Summon Voidwalker', 'Rabbs1=697', 'target'},
{'The Human Spirit', 'Rabbs1=20598', 'target'},
{'Unending Breath', 'Rabbs1=5697', 'target'},
{'Unending Resolve', 'Rabbs1=104773', 'target'},
{'Weapon Skills', 'Rabbs1=76299', 'target'},
{'Wisdom of the Four Winds', 'Rabbs1=115913', 'target'},
{'Thal\'kiel\'s Consumption', 'Rabbs1=211714', 'target'},
{'Grimoire: Felguard', 'Rabbs1=111898', 'target'},
{'Grimoire of Sacrifice', 'Rabbs1=108503','target'},
{'Dimensional Rift', 'Rabbs1=196586','target'},
{'Channel Demonfire', 'Rabbs1=196447','target'},
{'Summon Darkglare', 'Rabbs1=205180', 'target'},
 
}

local LCD = {
{'Armor Skills', 'Rabbs4=76276', 'target'},
{'Artisan Riding', 'Rabbs4=34091', 'target'},
{'Apprentice Riding', 'Rabbs4=33388', 'target'},
{'Armor Skills', 'Rabbs4=76277', 'target'},
{'Artisan Riding', 'Rabbs4=34091', 'target'},
{'Auto Attack', 'Rabbs4=6603', 'target'},
{'Avoidance', 'Rabbs4=190019', 'target'},
{'Banish', 'Rabbs4=710', 'target'},
{'Chaos Bolt', 'Rabbs4=116858', 'target'},
{'Cold Weather Flying', 'Rabbs4=54197', 'target'},
{'Conflagrate', 'Rabbs4=17962', 'target'},
{'Create Healthstone', 'Rabbs4=6201', 'target'},
{'Create Soulwell', 'Rabbs4=29893', 'target'},
{'Cripple', 'Rabbs4=170995', 'target'},
{'Demonic Circle', 'Rabbs4=48018', 'target'},
{'Demonic Gateway', 'Rabbs4=111771', 'target'},
{'Diplomacy', 'Rabbs4=20599', 'target'},
{'Doom Bolt', 'Rabbs4=85692', 'target'},
{'Drain Life', 'Rabbs4=234153', 'target'},
{'Drain Life', 'Rabbs4=689', 'target'},
{'Enslave Demon', 'Rabbs4=1098', 'target'},
{'Every Man for Himself', 'Rabbs4=59752', 'target'},
{'Eye of Kilrogg', 'Rabbs4=126', 'target'},
{'Fear', 'Rabbs4=5782', 'target'},
{'Flight Master\'s License', 'Rabbs4=90267', 'target'},
{'Havoc', 'Rabbs4=80240', 'target'},
{'Health Funnel', 'Rabbs4=755', 'target'},
{'Immolate', 'Rabbs4=348', 'target'},
{'Incinerate', 'Rabbs4=29722', 'target'},
{'Incinerate', 'Rabbs4=686', 'target'},
{'Languages', 'Rabbs4=79738', 'target'},
{'Life Tap', 'Rabbs4=1454', 'target'},
{'Mana Tap', 'Rabbs4=196104', 'target'},
{'Mastery:  Chaotic Energies', 'Rabbs4=77220', 'target'},
{'Rain of Fire', 'Rabbs4=5740', 'target'},
{'Revive Battle Pets', 'Rabbs4=125439', 'target'},
{'Ritual of Summoning', 'Rabbs4=698', 'target'},
{'Shadow Lock', 'Rabbs4=119898', 'target'},
{'Shadow Lock', 'Rabbs4=171138', 'target'},
{'Shadow Lock', 'Rabbs4=171140', 'target'},
{'Shoot', 'Rabbs4=5019', 'target'},
{'Soul Leech', 'Rabbs4=108370', 'target'},
{'Soulstone', 'Rabbs4=20707', 'target'},
{'Summon Doomguard', 'Rabbs4=157757', 'target'},
{'Summon Doomguard', 'Rabbs4=18540', 'target'},
{'Summon Felhunter', 'Rabbs4=691', 'target'},
{'Summon Imp', 'Rabbs4=688', 'target'},
{'Summon Infernal', 'Rabbs4=1122', 'target'},
{'Summon Infernal', 'Rabbs4=157898', 'target'},
{'Summon Succubus', 'Rabbs4=712', 'target'},
{'Summon Voidwalker', 'Rabbs4=697', 'target'},
{'The Human Spirit', 'Rabbs4=20598', 'target'},
{'Unending Breath', 'Rabbs4=5697', 'target'},
{'Unending Resolve', 'Rabbs4=104773', 'target'},
{'Weapon Skills', 'Rabbs4=76299', 'target'},
{'Wisdom of the Four Winds', 'Rabbs4=115913', 'target'},
{'Thal\'kiel\'s Consumption', 'Rabbs4=211714', 'target'},
{'Grimoire: Felguard', 'Rabbs4=111898', 'target'},
{'Grimoire of Sacrifice', 'Rabbs4=108503','target'},
{'Dimensional Rift', 'Rabbs4=196586','target'},
{'Channel Demonfire', 'Rabbs4=196447','target'},
{'Summon Darkglare', 'Rabbs4=205180', 'target'},




}

local AOE = {
{'Armor Skills', 'Rabbs3=76276', 'target'},
{'Artisan Riding', 'Rabbs3=34091', 'target'},
{'Apprentice Riding', 'Rabbs3=33388', 'target'},
{'Armor Skills', 'Rabbs3=76277', 'target'},
{'Artisan Riding', 'Rabbs3=34091', 'target'},
{'Auto Attack', 'Rabbs3=6603', 'target'},
{'Avoidance', 'Rabbs3=190019', 'target'},
{'Banish', 'Rabbs3=710', 'target'},
{'Chaos Bolt', 'Rabbs3=116858', 'target'},
{'Cold Weather Flying', 'Rabbs3=54197', 'target'},
{'Conflagrate', 'Rabbs3=17962', 'target'},
{'Create Healthstone', 'Rabbs3=6201', 'target'},
{'Create Soulwell', 'Rabbs3=29893', 'target'},
{'Cripple', 'Rabbs3=170995', 'target'},
{'Demonic Circle', 'Rabbs3=48018', 'target'},
{'Demonic Gateway', 'Rabbs3=111771', 'target'},
{'Diplomacy', 'Rabbs3=20599', 'target'},
{'Doom Bolt', 'Rabbs3=85692', 'target'},
{'Drain Life', 'Rabbs3=234153', 'target'},
{'Drain Life', 'Rabbs3=689', 'target'},
{'Enslave Demon', 'Rabbs3=1098', 'target'},
{'Every Man for Himself', 'Rabbs3=59752', 'target'},
{'Eye of Kilrogg', 'Rabbs3=126', 'target'},
{'Fear', 'Rabbs3=5782', 'target'},
{'Flight Master\'s License', 'Rabbs3=90267', 'target'},
{'Havoc', 'Rabbs3=80240', 'target'},
{'Health Funnel', 'Rabbs3=755', 'target'},
{'Immolate', 'Rabbs3=348', 'target'},
{'Incinerate', 'Rabbs3=29722', 'target'},
{'Incinerate', 'Rabbs3=686', 'target'},
{'Languages', 'Rabbs3=79738', 'target'},
{'Life Tap', 'Rabbs3=1454', 'target'},
{'Mana Tap', 'Rabbs3=196104', 'target'},
{'Mastery:  Chaotic Energies', 'Rabbs3=77220', 'target'},
{'Rain of Fire', 'Rabbs3=5740', 'target'},
{'Revive Battle Pets', 'Rabbs3=125439', 'target'},
{'Ritual of Summoning', 'Rabbs3=698', 'target'},
{'Shadow Lock', 'Rabbs3=119898', 'target'},
{'Shadow Lock', 'Rabbs3=171138', 'target'},
{'Shadow Lock', 'Rabbs3=171140', 'target'},
{'Shoot', 'Rabbs3=5019', 'target'},
{'Soul Leech', 'Rabbs3=108370', 'target'},
{'Soulstone', 'Rabbs3=20707', 'target'},
{'Summon Doomguard', 'Rabbs3=157757', 'target'},
{'Summon Doomguard', 'Rabbs3=18540', 'target'},
{'Summon Felhunter', 'Rabbs3=691', 'target'},
{'Summon Imp', 'Rabbs3=688', 'target'},
{'Summon Infernal', 'Rabbs3=1122', 'target'},
{'Summon Infernal', 'Rabbs3=157898', 'target'},
{'Summon Succubus', 'Rabbs3=712', 'target'},
{'Summon Voidwalker', 'Rabbs3=697', 'target'},
{'The Human Spirit', 'Rabbs3=20598', 'target'},
{'Unending Breath', 'Rabbs3=5697', 'target'},
{'Unending Resolve', 'Rabbs3=104773', 'target'},
{'Weapon Skills', 'Rabbs3=76299', 'target'},
{'Wisdom of the Four Winds', 'Rabbs3=115913', 'target'},
{'Thal\'kiel\'s Consumption', 'Rabbs3=211714', 'target'},
{'Grimoire: Felguard', 'Rabbs3=111898', 'target'},
{'Grimoire of Sacrifice', 'Rabbs3=108503','target'},
{'Dimensional Rift', 'Rabbs3=196586','target'},
{'Channel Demonfire', 'Rabbs3=196447','target'},
{'Summon Darkglare', 'Rabbs3=205180', 'target'},


}

local ST = {
{'#trinket1'},
{'#trinket2'},
{'Armor Skills', 'Rabbs2=76276', 'target'},
{'Artisan Riding', 'Rabbs2=34091', 'target'},
{'Apprentice Riding', 'Rabbs2=33388', 'target'},
{'Armor Skills', 'Rabbs2=76277', 'target'},
{'Artisan Riding', 'Rabbs2=34091', 'target'},
{'Auto Attack', 'Rabbs2=6603', 'target'},
{'Avoidance', 'Rabbs2=190019', 'target'},
{'Banish', 'Rabbs2=710', 'target'},
{'Chaos Bolt', 'Rabbs2=116858', 'target'},
{'Cold Weather Flying', 'Rabbs2=54197', 'target'},
{'Conflagrate', 'Rabbs2=17962', 'target'},
{'Create Healthstone', 'Rabbs2=6201', 'target'},
{'Create Soulwell', 'Rabbs2=29893', 'target'},
{'Cripple', 'Rabbs2=170995', 'target'},
{'Demonic Circle', 'Rabbs2=48018', 'target'},
{'Demonic Gateway', 'Rabbs2=111771', 'target'},
{'Diplomacy', 'Rabbs2=20599', 'target'},
{'Doom Bolt', 'Rabbs2=85692', 'target'},
{'Drain Life', 'Rabbs2=234153', 'target'},
{'Drain Life', 'Rabbs2=689', 'target'},
{'Enslave Demon', 'Rabbs2=1098', 'target'},
{'Every Man for Himself', 'Rabbs2=59752', 'target'},
{'Eye of Kilrogg', 'Rabbs2=126', 'target'},
{'Fear', 'Rabbs2=5782', 'target'},
{'Flight Master\'s License', 'Rabbs2=90267', 'target'},
{'Havoc', 'Rabbs2=80240', 'target'},
{'Health Funnel', 'Rabbs2=755', 'target'},
{'Immolate', 'Rabbs2=348', 'target'},
{'Incinerate', 'Rabbs2=29722', 'target'},
{'Incinerate', 'Rabbs2=686', 'target'},
{'Languages', 'Rabbs2=79738', 'target'},
{'Life Tap', 'Rabbs2=1454', 'target'},
{'Mana Tap', 'Rabbs2=196104', 'target'},
{'Mastery:  Chaotic Energies', 'Rabbs2=77220', 'target'},
{'Rain of Fire', 'Rabbs2=5740', 'target'},
{'Revive Battle Pets', 'Rabbs2=125439', 'target'},
{'Ritual of Summoning', 'Rabbs2=698', 'target'},
{'Shadow Lock', 'Rabbs2=119898', 'target'},
{'Shadow Lock', 'Rabbs2=171138', 'target'},
{'Shadow Lock', 'Rabbs2=171140', 'target'},
{'Shoot', 'Rabbs2=5019', 'target'},
{'Soul Leech', 'Rabbs2=108370', 'target'},
{'Soulstone', 'Rabbs2=20707', 'target'},
{'Summon Doomguard', 'Rabbs2=157757', 'target'},
{'Summon Doomguard', 'Rabbs2=18540', 'target'},
{'Summon Felhunter', 'Rabbs2=691', 'target'},
{'Summon Imp', 'Rabbs2=688', 'target'},
{'Summon Infernal', 'Rabbs2=1122', 'target'},
{'Summon Infernal', 'Rabbs2=157898', 'target'},
{'Summon Succubus', 'Rabbs2=712', 'target'},
{'Summon Voidwalker', 'Rabbs2=697', 'target'},
{'The Human Spirit', 'Rabbs2=20598', 'target'},
{'Unending Breath', 'Rabbs2=5697', 'target'},
{'Unending Resolve', 'Rabbs2=104773', 'target'},
{'Weapon Skills', 'Rabbs2=76299', 'target'},
{'Grimoire: Felguard', 'Rabbs2=111898', 'target'},
{'Wisdom of the Four Winds', 'Rabbs2=115913', 'target'},
{'Grimoire of Sacrifice', 'Rabbs2=108503','target'},
{'Dimensional Rift', 'Rabbs2=196586','target'},
{'Channel Demonfire', 'Rabbs2=196447','target'},
{'Shadowburn', 'Rabbs2=17877', 'target'},
    





}


local inCombat = {
	{Keybinds},
    {Interrupts, 'target.interruptAt(15)'},
    {Survival},
    {LCD, 'toggle(lcd)'},
	{SCD, 'toggle(scd)'},
    {AOE, {'toggle(aoe)'}},
	{ST, {'target.infront'}},
}

local outCombat = {
	{Keybinds},
	{Precombat},
}

NeP.CR:Add(267, {
	name = '[|cff'..Rabbs.addonColor..'Rabbs|r] Warlock - Destro',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})

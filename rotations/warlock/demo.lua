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
    { "/targetenemy [noexists]", "!target.exists" },
    { "/targetenemy [dead][noharm]", "target.dead" },
}

local Survival = {

{'Drain Life', 'player.health<30', 'target'},
}

local Interrupts = {
	{'89766'},
	
}

local SCD = {
{'Apprentice Riding', 'Rabbs1=33388', 'target'},
{'Armor Skills', 'Rabbs1=76277', 'target'},
{'Artisan Riding', 'Rabbs1=34091', 'target'},
{'Auto Attack', 'Rabbs1=6603', 'target'},
{'Avoidance', 'Rabbs1=32233', 'target'},
{'Axe Toss', 'Rabbs1=89766', 'target'},
{'Banish', 'Rabbs1=710', 'target'},
{'Burning Rush', 'Rabbs1=111400', 'target'},
{'Call Dreadstalkers', 'Rabbs1=104316', 'target'},
{'Cold Weather Flying', 'Rabbs1=54197', 'target'},
{'Create Healthstone', 'Rabbs1=6201', 'target'},
{'Create Soulwell', 'Rabbs1=29893', 'target'},
{'Demonic Circle', 'Rabbs1=48018', 'target'},
{'Demonic Empowerment', 'Rabbs1=193396', 'target'},
{'Demonic Gateway', 'Rabbs1=111771', 'target'},
{'Demonwrath', 'Rabbs1=193440', 'target'},
{'Diplomacy', 'Rabbs1=20599', 'target'},
{'Doom', 'Rabbs1=603', 'target'},
{'Drain Life', 'Rabbs1=234153', 'target'},
{'Drain Life', 'Rabbs1=689', 'target'},
{'Enslave Demon', 'Rabbs1=1098', 'target'},
{'Every Man for Himself', 'Rabbs1=59752', 'target'},
{'Eye of Kilrogg', 'Rabbs1=126', 'target'},
{'Fear', 'Rabbs1=5782', 'target'},
{'Felstorm', 'Rabbs1=119898', 'target'},
{'Felstorm', 'Rabbs1=119914', 'target'},
{'Felstorm', 'Rabbs1=89751', 'target'},
{'Flight Master\'s License', 'Rabbs1=90267', 'target'},
{'Grimoire: Felguard', 'Rabbs1=111898', 'target'},
{'Grimoire: Felhunter', 'Rabbs1=111897', 'target'},
{'Grimoire: Imp', 'Rabbs1=111859', 'target'},
{'Grimoire: Succubus', 'Rabbs1=111896', 'target'},
{'Grimoire:  Voidwalker', 'Rabbs1=111895', 'target'},
{'Hand of Gul\'dan', 'Rabbs1=105174', 'target'},
{'Health Funnel', 'Rabbs1=755', 'target'},
{'Languages', 'Rabbs1=79738', 'target'},
{'Legion Strike', 'Rabbs1=30213', 'target'},
{'Life Tap', 'Rabbs1=1454', 'target'},
{'Mastery:  Master Demonologist', 'Rabbs1=77219', 'target'},
{'Pursuit', 'Rabbs1=30151', 'target'},
{'Revive Battle Pets', 'Rabbs1=125439', 'target'},
{'Ritual of Summoning', 'Rabbs1=698', 'target'},
{'Shadow Bolt', 'Rabbs1=686', 'target'},
{'Shoot', 'Rabbs1=5019', 'target'},
{'Soul Leech', 'Rabbs1=108370', 'target'},
{'Soul Link', 'Rabbs1=108415', 'target'},
{'Soulstone', 'Rabbs1=20707', 'target'},
{'Summon Doomguard', 'Rabbs1=18540', 'target'},
{'Summon Felguard', 'Rabbs1=30146', 'target'},
{'Summon Felhunter', 'Rabbs1=691', 'target'},
{'Summon Imp', 'Rabbs1=688', 'target'},
{'Summon Infernal', 'Rabbs1=1122', 'target'},
{'Summon Succubus', 'Rabbs1=712', 'target'},
{'Summon Voidwalker', 'Rabbs1=697', 'target'},
{'The Human Spirit', 'Rabbs1=20598', 'target'},
{'Threatening Presence', 'Rabbs1=134477', 'target'},
{'Unending Breath', 'Rabbs1=5697', 'target'},
{'Unending Resolve', 'Rabbs1=104773', 'target'},
{'Void Reflexes', 'Rabbs1=117225', 'target'},
{'Weapon Skills', 'Rabbs1=76299', 'target'},
{'Wisdom of the Four Winds', 'Rabbs1=115913', 'target'},
{'Thal\'kiel\'s Consumption', 'Rabbs1=211714', 'target'},
{'Shadowflame', 'Rabbs1=205181', 'target'},
{'Demonbolt', 'Rabbs1=157695', 'target'},
{'Implosion', 'Rabbs1=196277', 'target'},
 
}

local LCD = {
{'Apprentice Riding', 'Rabbs4=33388', 'target'},
{'Armor Skills', 'Rabbs4=76277', 'target'},
{'Artisan Riding', 'Rabbs4=34091', 'target'},
{'Auto Attack', 'Rabbs4=6603', 'target'},
{'Avoidance', 'Rabbs4=32233', 'target'},
{'Axe Toss', 'Rabbs4=89766', 'target'},
{'Banish', 'Rabbs4=710', 'target'},
{'Burning Rush', 'Rabbs4=111400', 'target'},
{'Call Dreadstalkers', 'Rabbs4=104316', 'target'},
{'Cold Weather Flying', 'Rabbs4=54197', 'target'},
{'Create Healthstone', 'Rabbs4=6201', 'target'},
{'Create Soulwell', 'Rabbs4=29893', 'target'},
{'Demonic Circle', 'Rabbs4=48018', 'target'},
{'Demonic Empowerment', 'Rabbs4=193396', 'target'},
{'Demonic Gateway', 'Rabbs4=111771', 'target'},
{'Demonwrath', 'Rabbs4=193440', 'target'},
{'Diplomacy', 'Rabbs4=20599', 'target'},
{'Doom', 'Rabbs4=603', 'target'},
{'Drain Life', 'Rabbs4=234153', 'target'},
{'Drain Life', 'Rabbs4=689', 'target'},
{'Enslave Demon', 'Rabbs4=1098', 'target'},
{'Every Man for Himself', 'Rabbs4=59752', 'target'},
{'Eye of Kilrogg', 'Rabbs4=126', 'target'},
{'Fear', 'Rabbs4=5782', 'target'},
{'Felstorm', 'Rabbs4=119898', 'target'},
{'Felstorm', 'Rabbs4=119914', 'target'},
{'Felstorm', 'Rabbs4=89751', 'target'},
{'Flight Master\'s License', 'Rabbs4=90267', 'target'},
{'Grimoire: Felguard', 'Rabbs4=111898', 'target'},
{'Grimoire: Felhunter', 'Rabbs4=111897', 'target'},
{'Grimoire: Imp', 'Rabbs4=111859', 'target'},
{'Grimoire: Succubus', 'Rabbs4=111896', 'target'},
{'Grimoire: Voidwalker', 'Rabbs4=111895', 'target'},
{'Hand of Gul\'dan', 'Rabbs4=105174', 'target'},
{'Health Funnel', 'Rabbs4=755', 'target'},
{'Languages', 'Rabbs4=79738', 'target'},
{'Legion Strike', 'Rabbs4=30213', 'target'},
{'Life Tap', 'Rabbs4=1454', 'target'},
{'Mastery:  Master Demonologist', 'Rabbs4=77219', 'target'},
{'Pursuit', 'Rabbs4=30151', 'target'},
{'Revive Battle Pets', 'Rabbs4=125439', 'target'},
{'Ritual of Summoning', 'Rabbs4=698', 'target'},
{'Shadow Bolt', 'Rabbs4=686', 'target'},
{'Shoot', 'Rabbs4=5019', 'target'},
{'Soul Leech', 'Rabbs4=108370', 'target'},
{'Soul Link', 'Rabbs4=108415', 'target'},
{'Soulstone', 'Rabbs4=20707', 'target'},
{'Summon Doomguard', 'Rabbs4=18540', 'target'},
{'Summon Felguard', 'Rabbs4=30146', 'target'},
{'Summon Felhunter', 'Rabbs4=691', 'target'},
{'Summon Imp', 'Rabbs4=688', 'target'},
{'Summon Infernal', 'Rabbs4=1122', 'target'},
{'Summon Succubus', 'Rabbs4=712', 'target'},
{'Summon Voidwalker', 'Rabbs4=697', 'target'},
{'The Human Spirit', 'Rabbs4=20598', 'target'},
{'Threatening Presence', 'Rabbs4=134477', 'target'},
{'Unending Breath', 'Rabbs4=5697', 'target'},
{'Unending Resolve', 'Rabbs4=104773', 'target'},
{'Void Reflexes', 'Rabbs4=117225', 'target'},
{'Weapon Skills', 'Rabbs4=76299', 'target'},
{'Wisdom of the Four Winds', 'Rabbs4=115913', 'target'},
{'Thal\'kiel\'s Consumption', 'Rabbs4=211714', 'target'},
{'Shadowflame', 'Rabbs4=205181', 'target'},
{'Demonbolt', 'Rabbs4=157695', 'target'},
{'Implosion', 'Rabbs4=196277', 'target'},



}

local AOE = {
{'Apprentice Riding', 'Rabbs3=33388', 'target'},
{'Armor Skills', 'Rabbs3=76277', 'target'},
{'Artisan Riding', 'Rabbs3=34091', 'target'},
{'Auto Attack', 'Rabbs3=6603', 'target'},
{'Avoidance', 'Rabbs3=32233', 'target'},
{'Axe Toss', 'Rabbs3=89766', 'target'},
{'Banish', 'Rabbs3=710', 'target'},
{'Burning Rush', 'Rabbs3=111400', 'target'},
{'Call Dreadstalkers', 'Rabbs3=104316', 'target'},
{'Cold Weather Flying', 'Rabbs3=54197', 'target'},
{'Create Healthstone', 'Rabbs3=6201', 'target'},
{'Create Soulwell', 'Rabbs3=29893', 'target'},
{'Demonic Circle', 'Rabbs3=48018', 'target'},
{'Demonic Empowerment', 'Rabbs3=193396', 'target'},
{'Demonic Gateway', 'Rabbs3=111771', 'target'},
{'Demonwrath', 'Rabbs3=193440', 'target'},
{'Diplomacy', 'Rabbs3=20599', 'target'},
{'Doom', 'Rabbs3=603', 'target'},
{'Drain Life', 'Rabbs3=234153', 'target'},
{'Drain Life', 'Rabbs3=689', 'target'},
{'Enslave Demon', 'Rabbs3=1098', 'target'},
{'Every Man for Himself', 'Rabbs3=59752', 'target'},
{'Eye of Kilrogg', 'Rabbs3=126', 'target'},
{'Fear', 'Rabbs3=5782', 'target'},
{'Felstorm', 'Rabbs3=119898', 'target'},
{'Felstorm', 'Rabbs3=119914', 'target'},
{'Felstorm', 'Rabbs3=89751', 'target'},
{'Flight Master\'s License', 'Rabbs3=90267', 'target'},
{'Grimoire: Felguard', 'Rabbs3=111898', 'target'},
{'Grimoire: Felhunter', 'Rabbs3=111897', 'target'},
{'Grimoire: Imp', 'Rabbs3=111859', 'target'},
{'Grimoire: Succubus', 'Rabbs3=111896', 'target'},
{'Grimoire: Voidwalker', 'Rabbs3=111895', 'target'},
{'Hand of Gul\'dan', 'Rabbs3=105174', 'target'},
{'Health Funnel', 'Rabbs3=755', 'target'},
{'Languages', 'Rabbs3=79738', 'target'},
{'Legion Strike', 'Rabbs3=30213', 'target'},
{'Life Tap', 'Rabbs3=1454', 'target'},
{'Mastery:  Master Demonologist', 'Rabbs3=77219', 'target'},
{'Pursuit', 'Rabbs3=30151', 'target'},
{'Revive Battle Pets', 'Rabbs3=125439', 'target'},
{'Ritual of Summoning', 'Rabbs3=698', 'target'},
{'Shadow Bolt', 'Rabbs3=686', 'target'},
{'Shoot', 'Rabbs3=5019', 'target'},
{'Soul Leech', 'Rabbs3=108370', 'target'},
{'Soul Link', 'Rabbs3=108415', 'target'},
{'Soulstone', 'Rabbs3=20707', 'target'},
{'Summon Doomguard', 'Rabbs3=18540', 'target'},
{'Summon Felguard', 'Rabbs3=30146', 'target'},
{'Summon Felhunter', 'Rabbs3=691', 'target'},
{'Summon Imp', 'Rabbs3=688', 'target'},
{'Summon Infernal', 'Rabbs3=1122', 'target'},
{'Summon Succubus', 'Rabbs3=712', 'target'},
{'Summon Voidwalker', 'Rabbs3=697', 'target'},
{'The Human Spirit', 'Rabbs3=20598', 'target'},
{'Threatening Presence', 'Rabbs3=134477', 'target'},
{'Unending Breath', 'Rabbs3=5697', 'target'},
{'Unending Resolve', 'Rabbs3=104773', 'target'},
{'Void Reflexes', 'Rabbs3=117225', 'target'},
{'Weapon Skills', 'Rabbs3=76299', 'target'},
{'Wisdom of the Four Winds', 'Rabbs3=115913', 'target'},
{'Thal\'kiel\'s Consumption', 'Rabbs3=211714', 'target'},
{'Shadowflame', 'Rabbs3=205181', 'target'},
{'Demonbolt', 'Rabbs3=157695', 'target'},
{'Implosion', 'Rabbs3=196277', 'target'},


}

local ST = {
{'Apprentice Riding', 'Rabbs2=33388', 'target'},
{'Armor Skills', 'Rabbs2=76277', 'target'},
{'Artisan Riding', 'Rabbs2=34091', 'target'},
{'Auto Attack', 'Rabbs2=6603', 'target'},
{'Avoidance', 'Rabbs2=32233', 'target'},
{'Axe Toss', 'Rabbs2=89766', 'target'},
{'Banish', 'Rabbs2=710', 'target'},
{'Burning Rush', 'Rabbs2=111400', 'target'},
{'Call Dreadstalkers', 'Rabbs2=104316', 'target'},
{'Cold Weather Flying', 'Rabbs2=54197', 'target'},
{'Create Healthstone', 'Rabbs2=6201', 'target'},
{'Create Soulwell', 'Rabbs2=29893', 'target'},
{'Demonic Circle', 'Rabbs2=48018', 'target'},
{'Demonic Empowerment', 'Rabbs2=193396', 'target'},
{'Demonic Gateway', 'Rabbs2=111771', 'target'},
{'Demonwrath', 'Rabbs2=193440', 'target'},
{'Diplomacy', 'Rabbs2=20599', 'target'},
{'Doom', 'Rabbs2=603', 'target'},
{'Drain Life', 'Rabbs2=234153', 'target'},
{'Drain Life', 'Rabbs2=689', 'target'},
{'Enslave Demon', 'Rabbs2=1098', 'target'},
{'Every Man for Himself', 'Rabbs2=59752', 'target'},
{'Eye of Kilrogg', 'Rabbs2=126', 'target'},
{'Fear', 'Rabbs2=5782', 'target'},
{'Felstorm', 'Rabbs2=119898', 'target'},
{'Felstorm', 'Rabbs2=119914', 'target'},
{'Felstorm', 'Rabbs2=89751', 'target'},
{'Flight Master\'s License', 'Rabbs2=90267', 'target'},
{'Grimoire: Felguard', 'Rabbs2=111898', 'target'},
{'Grimoire: Felhunter', 'Rabbs2=111897', 'target'},
{'Grimoire: Imp', 'Rabbs2=111859', 'target'},
{'Grimoire: Succubus', 'Rabbs2=111896', 'target'},
{'Grimoire: Voidwalker', 'Rabbs2=111895', 'target'},
{'Hand of Gul\'dan', 'Rabbs2=105174', 'target'},
{'Health Funnel', 'Rabbs2=755', 'target'},
{'Languages', 'Rabbs2=79738', 'target'},
{'Legion Strike', 'Rabbs2=30213', 'target'},
{'Life Tap', 'Rabbs2=1454', 'target'},
{'Mastery:  Master Demonologist', 'Rabbs2=77219', 'target'},
{'Pursuit', 'Rabbs2=30151', 'target'},
{'Revive Battle Pets', 'Rabbs2=125439', 'target'},
{'Ritual of Summoning', 'Rabbs2=698', 'target'},
{'Shadow Bolt', 'Rabbs2=686', 'target'},
{'Shoot', 'Rabbs2=5019', 'target'},
{'Soul Leech', 'Rabbs2=108370', 'target'},
{'Soul Link', 'Rabbs2=108415', 'target'},
{'Soulstone', 'Rabbs2=20707', 'target'},
{'Summon Doomguard', 'Rabbs2=18540', 'target'},
{'Summon Felguard', 'Rabbs2=30146', 'target'},
{'Summon Felhunter', 'Rabbs2=691', 'target'},
{'Summon Imp', 'Rabbs2=688', 'target'},
{'Summon Infernal', 'Rabbs2=1122', 'target'},
{'Summon Succubus', 'Rabbs2=712', 'target'},
{'Summon Voidwalker', 'Rabbs2=697', 'target'},
{'The Human Spirit', 'Rabbs2=20598', 'target'},
{'Threatening Presence', 'Rabbs2=134477', 'target'},
{'Unending Breath', 'Rabbs2=5697', 'target'},
{'Unending Resolve', 'Rabbs2=104773', 'target'},
{'Void Reflexes', 'Rabbs2=117225', 'target'},
{'Weapon Skills', 'Rabbs2=76299', 'target'},
{'Wisdom of the Four Winds', 'Rabbs2=115913', 'target'},
{'211714', 'Rabbs2=211714', 'target'},
{'Shadowflame', 'Rabbs2=205181', 'target'},
{'Demonbolt', 'Rabbs2=157695', 'target'},
{'Implosion', 'Rabbs2=196277', 'target'},




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

NeP.CR:Add(266, {
	name = '[|cff'..Rabbs.addonColor..'Rabbs|r] Rogue - Outlaw',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})
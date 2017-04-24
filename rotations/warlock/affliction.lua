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
    {'%ressdead(20707)', nil, 'target'},
}

local Precombat = {
}

local Survival = {

}

local Interrupts = {
	{'Shadow Lock'},
	
}

local SCD = {
{'Agony','Rabbs1=980','target'},
{'Banish','Rabbs1=710','target'},
{'Corruption','Rabbs1=172','target'},
{'Create Healthstone','Rabbs1=6201','target'},
{'Create Soulwell','Rabbs1=29893','target'},
{'Dark Pact','Rabbs1=108416','target'},
{'Demonic Circle','Rabbs1=48018','target'},
{'Demonic Gateway','Rabbs1=111771','target'},
{'Devour Magic','Rabbs1=19505','target'},
{'Drain Soul','Rabbs1=198590','target'},
{'Drain Soul','Rabbs1=232670','target'},
{'Enslave Demon','Rabbs1=1098','target'},
{'Every Man for Himself','Rabbs1=59752','target'},
{'Eye of Kilrogg','Rabbs1=126','target'},
{'Fear','Rabbs1=5782','target'},
{'Grimoire of Sacrifice','Rabbs1=108503','target'},
{'Health Funnel','Rabbs1=755','target'},
{'Life Tap','Rabbs1=1454&player.mana<50&player.health>40','target'},
{'Reap Souls','Rabbs1=216698&!player.buff(Deadwind Harvester)','target'},
{'Revive Battle Pets','Rabbs1=125439','target'},
{'Ritual of Summoning','Rabbs1=698','target'},
{'Seed of Corruption','Rabbs1=27243','target'},
{'Shadow Bite','Rabbs1=54049','target'},
{'Shoot','Rabbs1=5019','target'},
{'Siphon Life','Rabbs1=63106','target'},
{'Soul Leech','Rabbs1=108370','target'},
{'Soulstone','Rabbs1=20707','target'},
{'Spell Lock','Rabbs1=119898','target'},
{'Spell Lock','Rabbs1=119910','target'},
{'Spell Lock','Rabbs1=19647','target'},
{'Summon Doomguard','Rabbs1=18540','target'},
'Summon Doomguard','Rabbs1=18540','target'},
{'Summon Felhunter','Rabbs1=691','target'},
{'Summon Imp','Rabbs1=688','target'},
{'Summon Infernal','Rabbs1=1122','target'},
{'Summon Succubus','Rabbs1=712','target'},
{'Summon Voidwalker','Rabbs1=697','target'},
{'Unending Breath','Rabbs1=5697','target'},
{'Unending Resolve','Rabbs1=104773','target'},
{'Unstable Affliction','Rabbs1=30108','target'},
{'Haunt','Rabbs1=48181','target'},
{'Mortal Coil','Rabbs1=6789','target'},
{'Soul Harvest','Rabbs1=196098','target'},
{'Burning Rush','Rabbs1=111400','target'},
{'Phantom Singularity','Rabbs1=205179','target'},
{'Soul Effigy','Rabbs1=205178','target'},

 
}

local LCD = {
{'Agony','Rabbs4=980','target'},
{'Banish','Rabbs4=710','target'},
{'Corruption','Rabbs4=172','target'},
{'Create Healthstone','Rabbs4=6201','target'},
{'Create Soulwell','Rabbs4=29893','target'},
{'Dark Pact','Rabbs4=108416','target'},
{'Demonic Circle','Rabbs4=48018','target'},
{'Demonic Gateway','Rabbs4=111771','target'},
{'Devour Magic','Rabbs4=19505','target'},
{'Drain Soul','Rabbs4=198590','target'},
{'Drain Soul','Rabbs4=232670','target'},
{'Enslave Demon','Rabbs4=1098','target'},
{'Every Man for Himself','Rabbs4=59752','target'},
{'Eye of Kilrogg','Rabbs4=126','target'},
{'Fear','Rabbs4=5782','target'},
{'Grimoire of Sacrifice','Rabbs4=108503','target'},
{'Health Funnel','Rabbs4=755','target'},
{'Life Tap','Rabbs4=1454','target'},
{'Reap Souls','Rabbs4=216698','target'},
{'Revive Battle Pets','Rabbs4=125439','target'},
{'Ritual of Summoning','Rabbs4=698','target'},
{'Seed of Corruption','Rabbs4=27243','target'},
{'Shadow Bite','Rabbs4=54049','target'},
{'Shoot','Rabbs4=5019','target'},
{'Siphon Life','Rabbs4=63106','target'},
{'Soul Leech','Rabbs4=108370','target'},
{'Soulstone','Rabbs4=20707','target'},
{'Spell Lock','Rabbs4=119898','target'},
{'Spell Lock','Rabbs4=119910','target'},
{'Spell Lock','Rabbs4=19647','target'},
{'Summon Doomguard','Rabbs4=18540','target'},
{'Summon Felhunter','Rabbs4=691','target'},
{'Summon Imp','Rabbs4=688','target'},
{'Summon Infernal','Rabbs4=1122','target'},
{'Summon Succubus','Rabbs4=712','target'},
{'Summon Voidwalker','Rabbs4=697','target'},
{'Unending Breath','Rabbs4=5697','target'},
{'Unending Resolve','Rabbs4=104773','target'},
{'Unstable Affliction','Rabbs4=30108','target'},
{'Haunt','Rabbs4=48181','target'},
{'Mortal Coil','Rabbs4=6789','target'},
{'Soul Harvest','Rabbs4=196098','target'},
{'Burning Rush','Rabbs4=111400','target'},
{'Phantom Singularity','Rabbs4=205179','target'},
{'Soul Effigy','Rabbs4=205178','target'},

}

local AOE = {
{'Agony','Rabbs3=980','target'},
{'Banish','Rabbs3=710','target'},
{'Corruption','Rabbs3=172','target'},
{'Create Healthstone','Rabbs3=6201','target'},
{'Create Soulwell','Rabbs3=29893','target'},
{'Dark Pact','Rabbs3=108416','target'},
{'Demonic Circle','Rabbs3=48018','target'},
{'Demonic Gateway','Rabbs3=111771','target'},
{'Devour Magic','Rabbs3=19505','target'},
{'Drain Soul','Rabbs3=198590','target'},
{'Drain Soul','Rabbs3=232670','target'},
{'Enslave Demon','Rabbs3=1098','target'},
{'Every Man for Himself','Rabbs3=59752','target'},
{'Eye of Kilrogg','Rabbs3=126','target'},
{'Fear','Rabbs3=5782','target'},
{'Grimoire of Sacrifice','Rabbs3=108503','target'},
{'Health Funnel','Rabbs3=755','target'},
{'Life Tap','Rabbs3=1454','target'},
{'Reap Souls','Rabbs3=216698','target'},
{'Revive Battle Pets','Rabbs3=125439','target'},
{'Ritual of Summoning','Rabbs3=698','target'},
{'Seed of Corruption','Rabbs3=27243','target'},
{'Shadow Bite','Rabbs3=54049','target'},
{'Shoot','Rabbs3=5019','target'},
{'Siphon Life','Rabbs3=63106','target'},
{'Soul Leech','Rabbs3=108370','target'},
{'Soulstone','Rabbs3=20707','target'},
{'Spell Lock','Rabbs3=119898','target'},
{'Spell Lock','Rabbs3=119910','target'},
{'Spell Lock','Rabbs3=19647','target'},
{'Summon Doomguard','Rabbs3=18540','target'},
{'Summon Felhunter','Rabbs3=691','target'},
{'Summon Imp','Rabbs3=688','target'},
{'Summon Infernal','Rabbs3=1122','target'},
{'Summon Succubus','Rabbs3=712','target'},
{'Summon Voidwalker','Rabbs3=697','target'},
{'Unending Breath','Rabbs3=5697','target'},
{'Unending Resolve','Rabbs3=104773','target'},
{'Unstable Affliction','Rabbs3=30108','target'},
{'Haunt','Rabbs3=48181','target'},
{'Mortal Coil','Rabbs3=6789','target'},
{'Soul Harvest','Rabbs3=196098','target'},
{'Burning Rush','Rabbs3=111400','target'},
{'Phantom Singularity','Rabbs3=205179','target'},
{'Soul Effigy','Rabbs3=205178','target'},

}

local ST = {
{'Agony','Rabbs2=980','target'},
{'Banish','Rabbs2=710','target'},
{'Corruption','Rabbs2=172','target'},
{'Create Healthstone','Rabbs2=6201','target'},
{'Create Soulwell','Rabbs2=29893','target'},
{'Dark Pact','Rabbs2=108416','target'},
{'Demonic Circle','Rabbs2=48018','target'},
{'Demonic Gateway','Rabbs2=111771','target'},
{'Devour Magic','Rabbs2=19505','target'},
{'Drain Soul','Rabbs2=198590','target'},
{'Drain Soul','Rabbs2=232670','target'},
{'Enslave Demon','Rabbs2=1098','target'},
{'Every Man for Himself','Rabbs2=59752','target'},
{'Eye of Kilrogg','Rabbs2=126','target'},
{'Fear','Rabbs2=5782','target'},
{'Grimoire of Sacrifice','Rabbs2=108503','target'},
{'Health Funnel','Rabbs2=755','target'},
{'Life Tap','Rabbs2=1454','target'},
{'Reap Souls','Rabbs2=216698','target'},
{'Revive Battle Pets','Rabbs2=125439','target'},
{'Ritual of Summoning','Rabbs2=698','target'},
{'Seed of Corruption','Rabbs2=27243','target'},
{'Shadow Bite','Rabbs2=54049','target'},
{'Shoot','Rabbs2=5019','target'},
{'Siphon Life','Rabbs2=63106','target'},
{'Soul Leech','Rabbs2=108370','target'},
{'Soulstone','Rabbs2=20707','target'},
{'Spell Lock','Rabbs2=119898','target'},
{'Spell Lock','Rabbs2=119910','target'},
{'Spell Lock','Rabbs2=19647','target'},
{'Summon Doomguard','Rabbs2=18540','target'},
{'Summon Felhunter','Rabbs2=691','target'},
{'Summon Imp','Rabbs2=688','target'},
{'Summon Infernal','Rabbs2=1122','target'},
{'Summon Succubus','Rabbs2=712','target'},
{'Summon Voidwalker','Rabbs2=697','target'},
{'Unending Breath','Rabbs2=5697','target'},
{'Unending Resolve','Rabbs2=104773','target'},
{'Unstable Affliction','Rabbs2=30108','target'},
{'Haunt','Rabbs2=48181','target'},
{'Mortal Coil','Rabbs2=6789','target'},
{'Soul Harvest','Rabbs2=196098','target'},
{'Burning Rush','Rabbs2=111400','target'},
{'Phantom Singularity','Rabbs2=205179','target'},
{'Soul Effigy','Rabbs2=205178','target'},


}


local inCombat = {
	{Keybinds},
    {Interrupts, 'target.interruptAt(15)'},
    {Survival, 'player.health<100'},
    {LCD, 'toggle(lcd)'},
	{SCD, 'toggle(scd)'},
    {AOE, {'toggle(aoe)'}},
	{ST},
}

local outCombat = {
	{Keybinds},
	{Precombat},
}

NeP.CR:Add(265, {
	name = '[|cff'..Rabbs.addonColor..'Rabbs|r] Warlock - Affliction',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})

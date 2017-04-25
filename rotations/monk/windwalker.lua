local _, Rabbs = ...
local GUI = {

}

local exeOnLoad = function()
	Rabbs.ExeOnLoad()

	print('|cffADFF2F ----------------------------------------------------------------------|r')
	print('|cffADFF2F --- |rMonk |cffFFA500Windwalker |r')
	print('|cffADFF2F --- |rRecommended Talents: 1/2 - 2/2 - 3/3 - 4/2 - 5/2 - 6/2 - 7/1')
	print('|cffADFF2F ----------------------------------------------------------------------|r')
    
    NeP.Interface:AddToggle({
		key ='lcd',
		name ='Long Cool Downs',
		text ='ON/OFF using long cooldowns in rotation',
		icon ='Interface\\Icons\\spell_deathknight_empowerruneblade2',
	})
    
    NeP.Interface:AddToggle({
		key ='scd',
		name ='Short Cool Downs',
		text ='ON/OFF using short cooldowns in rotation',
		icon ='Interface\\Icons\\ability_deathknight_pillaroffrost',
	})

end
local GUI = {
	{type ='header', text ='Keybinds:'},
	{type ='text', text ='Alt: Pause'},
}

local Keybinds = {
	{'%pause','keybind(alt)'},
}

local Precombat = {
}

local Survival = {

}

local Interrupts = {
	{'116705'},
	
}

local SCD = {
{'Afterlife','Rabbs1=116092','target'},
{'Armor Skills','Rabbs1=106904','target'},
{'Artisan Riding','Rabbs1=34091','target'},
{'Auto Attack','Rabbs1=6603','target'},
{'Blackout Kick','Rabbs1=100784','target'},
{'Bouncy','Rabbs1=107076','target'},
{'Cold Weather Flying','Rabbs1=54197','target'},
{'Crackling Jade Lightning','Rabbs1=117952','target'},
{'Detox','Rabbs1=218164','target'},
{'Disable','Rabbs1=116095','target'},
{'Effuse','Rabbs1=116694','target'},
{'Epicurean','Rabbs1=107072','target'},
{'Fists of Fury','Rabbs1=113656','target'},
{'Flying Serpent Kick','Rabbs1=101545','target'},
{'Gourmand','Rabbs1=107073','target'},
{'Inner Peace','Rabbs1=107074','target'},
{'Languages','Rabbs1=131701','target'},
{'Paralysis','Rabbs1=115078','target'},
{'Provoke','Rabbs1=115546','target'},
{'Quaking Palm','Rabbs1=107079','target'},
{'Resuscitate','Rabbs1=115178','target'},
{'Revive Battle Pets','Rabbs1=125439','target'},
{'Rising Sun Kick','Rabbs1=107428','target'},
{'Roll','Rabbs1=109132','target'},
{'Spear Hand Strike','Rabbs1=116705','target'},
{'Spinning Crane Kick','Rabbs1=101546','target'},
{'Storm, Earth, and Fire','Rabbs1=137639','target'},
{'Tiger Palm','Rabbs1=100780','target'},
{'Touch of Death','Rabbs1=115080','target'},
{'Touch of Karma','Rabbs1=122470','target'},
{'Weapon Skills','Rabbs1=106902','target'},
{'Windwalking','Rabbs1=157411','target'},
{'Wisdom of the Four Winds','Rabbs1=115913','target'},
{'Zen Pilgrimage','Rabbs1=126892','target'},
{'Chi Wave', 'Rabbs1=115098', 'target'},
{'Chi Burst', 'Rabbs1=123986', 'target'},
{'Tiger\'s Lust', 'Rabbs1=116841', 'target'},
{'Energizing Elixir', 'Rabbs1=115288', 'target'},
{'Ring of Peace', 'Rabbs1=116844', 'target'},
{'Summon Black Ox Statue', 'Rabbs1=115315', 'target'},
{'Leg Sweep', 'Rabbs1=119381', 'target'},
{'Healing Elixir', 'Rabbs1=122281', 'target'},
{'Diffuse Magic', 'Rabbs1=122783', 'target'},
{'Dampen Harm', 'Rabbs1=122278', 'target'},
{'Rushing Jade Wind', 'Rabbs1=116847', 'target'},
{'113904', 'Rabbs1=113904', 'target'},
{'Whirling Dragon Punch', 'Rabbs1=152175', 'target'},
{'Serenity', 'Rabbs1=152173', 'target'},
}

local LCD = {
{'Afterlife','Rabbs4=116092','target'},
{'Armor Skills','Rabbs4=106904','target'},
{'Artisan Riding','Rabbs4=34091','target'},
{'Auto Attack','Rabbs4=6603','target'},
{'Blackout Kick','Rabbs4=100784','target'},
{'Bouncy','Rabbs4=107076','target'},
{'Cold Weather Flying','Rabbs4=54197','target'},
{'Crackling Jade Lightning','Rabbs4=117952','target'},
{'Detox','Rabbs4=218164','target'},
{'Disable','Rabbs4=116095','target'},
{'Effuse','Rabbs4=116694','target'},
{'Epicurean','Rabbs4=107072','target'},
{'Fists of Fury','Rabbs4=113656','target'},
{'Flying Serpent Kick','Rabbs4=101545','target'},
{'Gourmand','Rabbs4=107073','target'},
{'Inner Peace','Rabbs4=107074','target'},
{'Languages','Rabbs4=131701','target'},
{'Paralysis','Rabbs4=115078','target'},
{'Provoke','Rabbs4=115546','target'},
{'Quaking Palm','Rabbs4=107079','target'},
{'Resuscitate','Rabbs4=115178','target'},
{'Revive Battle Pets','Rabbs4=125439','target'},
{'Rising Sun Kick','Rabbs4=107428','target'},
{'Roll','Rabbs4=109132','target'},
{'Spear Hand Strike','Rabbs4=116705','target'},
{'Spinning Crane Kick','Rabbs4=101546','target'},
{'Storm, Earth, and Fire','Rabbs4=137639','target'},
{'Tiger Palm','Rabbs4=100780','target'},
{'Touch of Death','Rabbs4=115080','target'},
{'Touch of Karma','Rabbs4=122470','target'},
{'Weapon Skills','Rabbs4=106902','target'},
{'Windwalking','Rabbs4=157411','target'},
{'Wisdom of the Four Winds','Rabbs4=115913','target'},
{'Zen Pilgrimage','Rabbs4=126892','target'},
{'Chi Wave', 'Rabbs4=115098', 'target'},
{'Chi Burst', 'Rabbs4=123986', 'target'},
{'Tiger\'s Lust', 'Rabbs4=116841', 'target'},
{'Energizing Elixir', 'Rabbs4=115288', 'target'},
{'Ring of Peace', 'Rabbs4=116844', 'target'},
{'Summon Black Ox Statue', 'Rabbs4=115315', 'target'},
{'Leg Sweep', 'Rabbs4=119381', 'target'},
{'Healing Elixir', 'Rabbs4=122281', 'target'},
{'Diffuse Magic', 'Rabbs4=122783', 'target'},
{'Dampen Harm', 'Rabbs4=122278', 'target'},
{'Rushing Jade Wind', 'Rabbs4=116847', 'target'},
{'123904', 'Rabbs4=123904', 'target'},
{'Whirling Dragon Punch', 'Rabbs4=152175', 'target'},
{'Serenity', 'Rabbs4=152173', 'target'},

}

local AOE = {
{'Afterlife','Rabbs3=116092','target'},
{'Armor Skills','Rabbs3=106904','target'},
{'Artisan Riding','Rabbs3=34091','target'},
{'Auto Attack','Rabbs3=6603','target'},
{'Blackout Kick','Rabbs3=100784','target'},
{'Bouncy','Rabbs3=107076','target'},
{'Cold Weather Flying','Rabbs3=54197','target'},
{'Crackling Jade Lightning','Rabbs3=117952','target'},
{'Detox','Rabbs3=218164','target'},
{'Disable','Rabbs3=116095','target'},
{'Effuse','Rabbs3=116694','target'},
{'Epicurean','Rabbs3=107072','target'},
{'Fists of Fury','Rabbs3=113656','target'},
{'Flying Serpent Kick','Rabbs3=101545','target'},
{'Gourmand','Rabbs3=107073','target'},
{'Inner Peace','Rabbs3=107074','target'},
{'Languages','Rabbs3=131701','target'},
{'Paralysis','Rabbs3=115078','target'},
{'Provoke','Rabbs3=115546','target'},
{'Quaking Palm','Rabbs3=107079','target'},
{'Resuscitate','Rabbs3=115178','target'},
{'Revive Battle Pets','Rabbs3=125439','target'},
{'Rising Sun Kick','Rabbs3=107428','target'},
{'Roll','Rabbs3=109132','target'},
{'Spear Hand Strike','Rabbs3=116705','target'},
{'Spinning Crane Kick','Rabbs3=101546','target'},
{'Storm, Earth, and Fire','Rabbs3=137639','target'},
{'Tiger Palm','Rabbs3=100780','target'},
{'Touch of Death','Rabbs3=115080','target'},
{'Touch of Karma','Rabbs3=122470','target'},
{'Weapon Skills','Rabbs3=106902','target'},
{'Windwalking','Rabbs3=157411','target'},
{'Wisdom of the Four Winds','Rabbs3=115913','target'},
{'Zen Pilgrimage','Rabbs3=126892','target'},
{'Chi Wave', 'Rabbs3=115098', 'target'},
{'Chi Burst', 'Rabbs3=123986', 'target'},
{'Tiger\'s Lust', 'Rabbs3=116841', 'target'},
{'Energizing Elixir', 'Rabbs3=115288', 'target'},
{'Ring of Peace', 'Rabbs3=116844', 'target'},
{'Summon Black Ox Statue', 'Rabbs3=115315', 'target'},
{'Leg Sweep', 'Rabbs3=119381', 'target'},
{'Healing Elixir', 'Rabbs3=122281', 'target'},
{'Diffuse Magic', 'Rabbs3=122783', 'target'},
{'Dampen Harm', 'Rabbs3=122278', 'target'},
{'Rushing Jade Wind', 'Rabbs3=116847', 'target'},
{'123904', 'Rabbs3=123904', 'target'},
{'Whirling Dragon Punch', 'Rabbs3=152175', 'target'},
{'Serenity', 'Rabbs3=152173', 'target'},

}

local ST = {
{'Afterlife','Rabbs2=116092','target'},
{'Armor Skills','Rabbs2=106904','target'},
{'Artisan Riding','Rabbs2=34091','target'},
{'Auto Attack','Rabbs2=6603','target'},
{'Blackout Kick','Rabbs2=100784','target'},
{'Bouncy','Rabbs2=107076','target'},
{'Cold Weather Flying','Rabbs2=54197','target'},
{'Crackling Jade Lightning','Rabbs2=117952','target'},
{'Detox','Rabbs2=218164','target'},
{'Disable','Rabbs2=116095','target'},
{'Effuse','Rabbs2=116694','target'},
{'Epicurean','Rabbs2=107072','target'},
{'Fists of Fury','Rabbs2=113656','target'},
{'Flying Serpent Kick','Rabbs2=101545','target'},
{'Gourmand','Rabbs2=107073','target'},
{'Inner Peace','Rabbs2=107074','target'},
{'Languages','Rabbs2=131701','target'},
{'Paralysis','Rabbs2=115078','target'},
{'Provoke','Rabbs2=115546','target'},
{'Quaking Palm','Rabbs2=107079','target'},
{'Resuscitate','Rabbs2=115178','target'},
{'Revive Battle Pets','Rabbs2=125439','target'},
{'Rising Sun Kick','Rabbs2=107428','target'},
{'Roll','Rabbs2=109132','target'},
{'Spear Hand Strike','Rabbs2=116705','target'},
{'Spinning Crane Kick','Rabbs2=101546','target'},
{'Storm, Earth, and Fire','Rabbs2=137639','target'},
{'Tiger Palm','Rabbs2=100780','target'},
{'Touch of Death','Rabbs2=115080','target'},
{'Touch of Karma','Rabbs2=122470','target'},
{'Weapon Skills','Rabbs2=106902','target'},
{'Windwalking','Rabbs2=157411','target'},
{'Wisdom of the Four Winds','Rabbs2=115913','target'},
{'Zen Pilgrimage','Rabbs2=126892','target'},
{'Chi Wave', 'Rabbs2=115098', 'target'},
{'Chi Burst', 'Rabbs2=123986', 'target'},
{'Tiger\'s Lust', 'Rabbs2=116841', 'target'},
{'Energizing Elixir', 'Rabbs2=115288', 'target'},
{'Ring of Peace', 'Rabbs2=116844', 'target'},
{'Summon Black Ox Statue', 'Rabbs2=115315', 'target'},
{'Leg Sweep', 'Rabbs2=119381', 'target'},
{'Healing Elixir', 'Rabbs2=122281', 'target'},
{'Diffuse Magic', 'Rabbs2=122783', 'target'},
{'Dampen Harm', 'Rabbs2=122278', 'target'},
{'Rushing Jade Wind', 'Rabbs2=116847', 'target'},
{'123904', 'Rabbs2=123904', 'target'},
{'Whirling Dragon Punch', 'Rabbs2=152175', 'target'},
{'Serenity', 'Rabbs2=152173', 'target'},


}


local inCombat = {
	{Keybinds},
    {Interrupts,'target.interruptAt(15)'},
    {Survival,'player.health<100'},
    {LCD,'toggle(lcd)'},
	{SCD,'toggle(scd)'},
    {AOE, {'player.area(8).enemies>=1&toggle(aoe)'}},
	{ST, {'target.range < 8','target.infront'}},
}

local outCombat = {
	{Keybinds},
	{Precombat},
}

NeP.CR:Add(269, {
	name ='[|cff'..Rabbs.addonColor..'Rabbs|r] Monk - Windwalker',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})

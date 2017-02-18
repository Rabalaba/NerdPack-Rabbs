local _, Rabbs = ...

local exeOnLoad = function()
	Rabbs.ExeOnLoad()

	print('|cffADFF2F ----------------------------------------------------------------------|r')
	print('|cffADFF2F --- |rDRUID |cffFFA500Balance |r')
	print('|cffADFF2F --- |rRecommended Talents: 1/3 - 2/3 - 3/2 - 4/3 - 5/3 - 6/2 - 7/2')
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
    {'%ressdead', 'Rebirth'},
    {'%ressdead', 'Revive'},
}

local Precombat = {

}

local Survival = {
    {'Barkskin', '{new_incdmgp+new_incdmgm}>{0.00006*player.health*player.health*player.health.max}'},
	{'108238', 'player.health <25'},
}

local Interrupts = {
	{'78675'},
	
}

local SCD = {
{'Astral Influence','Rabbs1=197524','target'},
{'Barkskin','Rabbs1=22812','target'},
{'Bear Form','Rabbs1=5487','target'},
{'Blessing of the Ancients','Rabbs1=202360','target'},
{'Cat Form','Rabbs1=768','target'},
{'Celestial Alignment','Rabbs1=194223','target'},
{'Dash','Rabbs1=1850','target'},
{'Dreamwalk','Rabbs1=193753','target'},
{'Entangling Roots','Rabbs1=339','target'},
{'Flap','Rabbs1=164862','target'},
{'Flayer','Rabbs1=68978','target'},
{'Frenzied Regeneration','Rabbs1=22842','target'},
{'Growl','Rabbs1=6795','target'},
{'Incarnation:  Chosen of Elune','Rabbs1=102560','target'},
{'Innervate','Rabbs1=29166','target'},
{'Ironfur','Rabbs1=192081','target'},
{'Lunar Strike','Rabbs1=194153','target'},
{'Mangle','Rabbs1=33917','target'},
{'Mighty Bash','Rabbs1=175682','target'},
{'Mighty Bash','Rabbs1=5211','target'},
{'Mobile Banking','Rabbs1=83958','target'},
{'Moonfire','Rabbs1=155625','target'},
{'Moonfire','Rabbs1=8921','target'},
{'New Moon','Rabbs1=202767','target'},
{'Prowl','Rabbs1=5215','target'},
{'Rebirth','Rabbs1=20484','target'},
{'Regrowth','Rabbs1=8936','target'},
{'Remove Corruption','Rabbs1=2782','target'},
{'Renewal','Rabbs1=108238','target'},
{'Revive','Rabbs1=50769','target'},
{'Running Wild','Rabbs1=87840','target'},
{'Solar Beam','Rabbs1=78675','target'},
{'Solar Wrath','Rabbs1=190984','target'},
{'Stag Form','Rabbs1=210053','target'},
{'Starfall','Rabbs1=191034','cursor.ground'},
{'Starsurge','Rabbs1=78674','target'},
{'Sunfire','Rabbs1=93402','target'},
{'Thick Hide','Rabbs1=16931','target'},
{'Thrash','Rabbs1=106830','target'},
{'Thrash','Rabbs1=106832','target'},
{'Travel Form','Rabbs1=783','target'},
{'Treant Form','Rabbs1=114282','target'},
{'Two Forms','Rabbs1=68996','target'},
{'Viciousness','Rabbs1=68975','target'},
{'Warrior of Elune','Rabbs1=202425','target'},
{'Half Moon','Rabbs1=202768','target'},
{'Full Moon', 'Rabbs1=202771', 'target'},
}

local LCD = {
{'Astral Influence','Rabbs4=197524','target'},
{'Barkskin','Rabbs4=22812','target'},
{'Bear Form','Rabbs4=5487','target'},
{'Blessing of the Ancients','Rabbs4=202360','target'},
{'Cat Form','Rabbs4=768','target'},
{'Celestial Alignment','Rabbs4=194223','target'},
{'Dash','Rabbs4=1850','target'},
{'Dreamwalk','Rabbs4=193753','target'},
{'Entangling Roots','Rabbs4=339','target'},
{'Flap','Rabbs4=164862','target'},
{'Flayer','Rabbs4=68978','target'},
{'Frenzied Regeneration','Rabbs4=22842','target'},
{'Growl','Rabbs4=6795','target'},
{'Incarnation:  Chosen of Elune','Rabbs4=102560','target'},
{'Innervate','Rabbs4=29166','target'},
{'Ironfur','Rabbs4=192081','target'},
{'Lunar Strike','Rabbs4=194153','target'},
{'Mangle','Rabbs4=33917','target'},
{'Mighty Bash','Rabbs4=175682','target'},
{'Mighty Bash','Rabbs4=5211','target'},
{'Mobile Banking','Rabbs4=83958','target'},
{'Moonfire','Rabbs4=155625','target'},
{'Moonfire','Rabbs4=8921','target'},
{'New Moon','Rabbs4=202767','target'},
{'Prowl','Rabbs4=5215','target'},
{'Rebirth','Rabbs4=20484','target'},
{'Regrowth','Rabbs4=8936','target'},
{'Remove Corruption','Rabbs4=2782','target'},
{'Renewal','Rabbs4=108238','target'},
{'Revive','Rabbs4=50769','target'},
{'Running Wild','Rabbs4=87840','target'},
{'Solar Beam','Rabbs4=78675','target'},
{'Solar Wrath','Rabbs4=190984','target'},
{'Stag Form','Rabbs4=210053','target'},
{'Starfall','Rabbs4=191034','cursor.ground'},
{'Starsurge','Rabbs4=78674','target'},
{'Sunfire','Rabbs4=93402','target'},
{'Thick Hide','Rabbs4=16931','target'},
{'Thrash','Rabbs4=106830','target'},
{'Thrash','Rabbs4=106832','target'},
{'Travel Form','Rabbs4=783','target'},
{'Treant Form','Rabbs4=114282','target'},
{'Two Forms','Rabbs4=68996','target'},
{'Viciousness','Rabbs4=68975','target'},
{'Warrior of Elune','Rabbs4=202425','target'},
{'Half Moon','Rabbs4=202768','target'},
{'Full Moon', 'Rabbs4=202771', 'target'},

}

local AOE = {
{'Astral Influence','Rabbs3=197524','target'},
{'Barkskin','Rabbs3=22812','target'},
{'Bear Form','Rabbs3=5487','target'},
{'Blessing of the Ancients','Rabbs3=202360','target'},
{'Cat Form','Rabbs3=768','target'},
{'Celestial Alignment','Rabbs3=194223','target'},
{'Dash','Rabbs3=1850','target'},
{'Dreamwalk','Rabbs3=193753','target'},
{'Entangling Roots','Rabbs3=339','target'},
{'Flap','Rabbs3=164862','target'},
{'Flayer','Rabbs3=68978','target'},
{'Frenzied Regeneration','Rabbs3=22842','target'},
{'Growl','Rabbs3=6795','target'},
{'Incarnation:  Chosen of Elune','Rabbs3=102560','target'},
{'Innervate','Rabbs3=29166','target'},
{'Ironfur','Rabbs3=192081','target'},
{'Lunar Strike','Rabbs3=194153','target'},
{'Mangle','Rabbs3=33917','target'},
{'Mighty Bash','Rabbs3=175682','target'},
{'Mighty Bash','Rabbs3=5211','target'},
{'Mobile Banking','Rabbs3=83958','target'},
{'Moonfire','Rabbs3=155625','target'},
{'Moonfire','Rabbs3=8921','target'},
{'New Moon','Rabbs3=202767','target'},
{'Prowl','Rabbs3=5215','target'},
{'Rebirth','Rabbs3=20484','target'},
{'Regrowth','Rabbs3=8936','target'},
{'Remove Corruption','Rabbs3=2782','target'},
{'Renewal','Rabbs3=108238','target'},
{'Revive','Rabbs3=50769','target'},
{'Running Wild','Rabbs3=87840','target'},
{'Solar Beam','Rabbs3=78675','target'},
{'Solar Wrath','Rabbs3=190984','target'},
{'Stag Form','Rabbs3=210053','target'},
{'Starfall','Rabbs3=191034','cursor.ground'},
{'Starsurge','Rabbs3=78674','target'},
{'Sunfire','Rabbs3=93402','target'},
{'Thick Hide','Rabbs3=16931','target'},
{'Thrash','Rabbs3=106830','target'},
{'Thrash','Rabbs3=106832','target'},
{'Travel Form','Rabbs3=783','target'},
{'Treant Form','Rabbs3=114282','target'},
{'Two Forms','Rabbs3=68996','target'},
{'Viciousness','Rabbs3=68975','target'},
{'Warrior of Elune','Rabbs3=202425','target'},
{'Half Moon','Rabbs3=202768','target'},
{'Full Moon', 'Rabbs3=202771', 'target'},

}

local ST = {
{'Astral Influence','Rabbs2=197524','target'},
{'Barkskin','Rabbs2=22812','target'},
{'Bear Form','Rabbs2=5487','target'},
{'Blessing of the Ancients','Rabbs2=202360','target'},
{'Cat Form','Rabbs2=768','target'},
{'Celestial Alignment','Rabbs2=194223','target'},
{'Dash','Rabbs2=1850','target'},
{'Dreamwalk','Rabbs2=193753','target'},
{'Entangling Roots','Rabbs2=339','target'},
{'Flap','Rabbs2=164862','target'},
{'Flayer','Rabbs2=68978','target'},
{'Frenzied Regeneration','Rabbs2=22842','target'},
{'Growl','Rabbs2=6795','target'},
{'Incarnation:  Chosen of Elune','Rabbs2=102560','target'},
{'Innervate','Rabbs2=29166','target'},
{'Ironfur','Rabbs2=192081','target'},
{'Lunar Strike','Rabbs2=194153','target'},
{'Mangle','Rabbs2=33917','target'},
{'Mighty Bash','Rabbs2=175682','target'},
{'Mighty Bash','Rabbs2=5211','target'},
{'Mobile Banking','Rabbs2=83958','target'},
{'Moonfire','Rabbs2=155625','target'},
{'Moonfire','Rabbs2=8921','target'},
{'New Moon','Rabbs2=202767','target'},
{'Prowl','Rabbs2=5215','target'},
{'Rebirth','Rabbs2=20484','target'},
{'Regrowth','Rabbs2=8936','target'},
{'Remove Corruption','Rabbs2=2782','target'},
{'Renewal','Rabbs2=108238','target'},
{'Revive','Rabbs2=50769','target'},
{'Running Wild','Rabbs2=87840','target'},
{'Solar Beam','Rabbs2=78675','target'},
{'Solar Wrath','Rabbs2=190984','target'},
{'Stag Form','Rabbs2=210053','target'},
{'Starfall','Rabbs2=191034','cursor.ground'},
{'Starsurge','Rabbs2=78674','target'},
{'Sunfire','Rabbs2=93402','target'},
{'Thick Hide','Rabbs2=16931','target'},
{'Thrash','Rabbs2=106830','target'},
{'Thrash','Rabbs2=106832','target'},
{'Travel Form','Rabbs2=783','target'},
{'Treant Form','Rabbs2=114282','target'},
{'Two Forms','Rabbs2=68996','target'},
{'Viciousness','Rabbs2=68975','target'},
{'Warrior of Elune','Rabbs2=202425','target'},
{'Half Moon','Rabbs2=202768','target'},
{'Full Moon', 'Rabbs2=202771', 'target'},




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

NeP.CR:Add(102, '[|cff'..Rabbs.addonColor..'Rabbs|r] DRUID - Balance', inCombat, outCombat,exeOnLoad)

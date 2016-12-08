local _, Rabbs = ...

local exeOnLoad = function()
	Rabbs.ExeOnLoad()

	print('|cffADFF2F ----------------------------------------------------------------------|r')
	print('|cffADFF2F --- |rDRUID |cffFFA500Feral |r')
	print('|cffADFF2F --- |rRecommended Talents: 1/3 - 2/3 - 3/2 - 4/3 - 5/3 - 6/2 - 7/2')
	print('|cffADFF2F ----------------------------------------------------------------------|r')

end
local GUI = {
	{type = 'header', text = 'Keybinds:'},
	{type = 'text', text = 'Alt: Pause'},
}

local Keybinds = {
	{'%pause', 'keybind(alt)'},
}

local Precombat = {
{'Cat Form', '!player.buff(Cat Form)&!player.buff(Travel Form)'},
{'Prowl', '!player.buff(Prowl)&player.buff(Cat Form)'},
}

local Survival = {
	{'61336', 'player.health <25'},
}

local Interrupts = {
	{'106839'},
	
}


local ST = {
    {'rake', 'OvaleBestAction==1822', 'target'},
    {'moonfire', 'OvaleBestAction==155625', 'target'},
    {'Savage Roar', 'OvaleBestAction==52610', 'target'},
    {'Ferocious Bite', 'OvaleBestAction==22568', 'target'},
    {'rip', 'OvaleBestAction==1079', 'target'},
    {'Regrowth', 'OvaleBestAction==8936', 'player'},
    {'shred', 'OvaleBestAction==5221', 'target'},
    {'Tiger\'s Fury', 'OvaleBestAction2==5217', 'target'},
    {'Berserk', 'OvaleBestAction==106951', 'target'},
    {'Berserk', 'OvaleBestAction2==106951', 'target'},
    {'!Ashamane\'s Frenzy', 'OvaleBestAction2==210722', 'target'},


}


local inCombat = {
	{Keybinds},
	{Cooldowns, 'toggle(cooldowns)'},
	{Cat, '!player.buff(768)'},
	{Interrupts, 'target.interruptAt(15)'},
	{Survival, 'player.health < 25'},
	{Leap, 'target.range>8&target.range<25&talent(3,2)&player.buff(768)&target.infront'},
	{ST, {'target.range < 8', 'target.infront'}}
}

local outCombat = {
	{Keybinds},
	{Precombat},
}

NeP.CR:Add(103, '[|cff'..Rabbs.addonColor..'Rabbs|r] DRUID - Feral', inCombat, outCombat,exeOnLoad)

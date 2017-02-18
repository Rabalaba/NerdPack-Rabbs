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
    {'108238', 'player.health <40&talent(2,1)'},
	{'61336', 'player.health <25'},
}

local Interrupts = {
	{'Skull Bash'},
	
}

local Cooldowns = {
    {'Berserk', 'Rabbs4=106951', 'target'},
    {'Tiger\'s Fury', 'Rabbs1=5217', 'target'},
    {'Ashamane\'s Frenzy', 'Rabbs1=210722||Rabbs2=210722', 'target'},
    
    
}
local Rip = {
	{'%pause', 'player.energy<30&!player.buff(Clearcasting)'},
	{'Rip'},
}

local Savage_Roar = {
	{'%pause', 'player.energy<40&!player.buff(Clearcasting)'},
	{'Savage Roar'},
}

local Ferocious_Bite = {
	{'%pause', 'player.energy<25&!player.buff(Clearcasting)'},
	{'Ferocious Bite'},
}

local Thrash = {
	{'%pause', 'player.energy<50&!player.buff(Clearcasting)'},
	{'Thrash'},
}

local Swipe = {
	{'%pause', 'player.energy<45&!player.buff(Clearcasting)'},
	{'Swipe'},
}

local AOE = {
{'Ferocious Bite', 'Rabbs3=22568', 'target'},
{'Moonfire', 'Rabbs3=155625', 'target'},
{'Rake', 'Rabbs3=1822', 'target'},
{'Regrowth', 'Rabbs3=8936', 'target'},
{'Rip', 'Rabbs3=1079', 'target'},
{'Savage Roar', 'Rabbs3=52610', 'target'},
{'Shred', 'Rabbs3=5221', 'target'},
{'Swipe', 'Rabbs3=106785', 'target'},
{'Thrash', 'Rabbs3=106830', 'target'},

	
}

local ST = {


{'Incarnation: King of the Jungle', 'Rabbs2=102543'},
{'Ferocious Bite', 'Rabbs2=22568', 'target'},
{'Moonfire', 'Rabbs2=155625', 'target'},
{'Rake', 'Rabbs2=1822', 'target'},
{'Regrowth', 'Rabbs2=8936', 'target'},
{'Rip', 'Rabbs2=1079', 'target'},
{'Savage Roar', 'Rabbs2=52610', 'target'},
{'Shred', 'Rabbs2=5221', 'target'},
{'Swipe', 'Rabbs2=106785', 'target'},
{'Thrash', 'Rabbs2=106830', 'target'},


}


local inCombat = {
	{Keybinds},
	{Cooldowns, 'toggle(cooldowns)'},
	{Cat, '!player.buff(768)'},
	{Interrupts, 'target.interruptAt(1)&toggle(interrupts)&target.infront&target.range<=8'},
	{Survival, 'player.health < 25'},
	{Leap, 'target.range>8&target.range<25&talent(3,2)&player.buff(768)&target.infront'},
    {AOE, {'player.area(8).enemies>=5'}},
	{ST, {'target.range < 8', 'target.infront'}},
}

local outCombat = {
	{Keybinds},
	{Precombat},
}

NeP.CR:Add(103, 'Rabbs', inCombat, outCombat,exeOnLoad)

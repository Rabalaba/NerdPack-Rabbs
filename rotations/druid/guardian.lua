local _, Rabbs = ...

local exeOnLoad = function()
	Rabbs.ExeOnLoad()

	print('|cffADFF2F ----------------------------------------------------------------------|r')
	print('|cffADFF2F --- |rDRUID |cffFFA500Guardian |r')
	print('|cffADFF2F --- |rRecommended Talents: 1/2 - 2/3 - 3/3 - 4/3 - 5/3 - 6/2 - 7/1')
	print('|cffADFF2F ----------------------------------------------------------------------|r')

end
local GUI = {
	{type = 'header', text = 'Keybinds:'},
	{type = 'text', text = 'Alt: Pause'},
}

local Keybinds = {
	{'%pause', 'keybind(alt)'},
}

local Interrupts = {
	{'Skull Bash'},
	{'Typhoon', 'talent(4,3)&cooldown(Skull Bash).remains>gcd'},
	{'Mighty Bash', 'talent(4,1)&cooldown(Skull Bash).remains>gcd'},
}

local Cooldowns = {
	{'Frenzied Regeneration', '{player.health<=75&new_incdmg>{0.3*player.health.max}&!player.buff(Frenzied Regeneration)}||{player.health<=25&new_incdmg>{0.15*player.health.max}&!player.buff(Frenzied Regeneration)}'},
    {'Rage of the Sleeper', '{player.health<=60&new_incdmg>{0.4*player.health.max}&!player.buff(Frenzied Regeneration)}||{player.health<=20&new_incdmg>{0.2*player.health.max}&!player.buff(Frenzied Regeneration)}'},
    {'Ironfur', 'incdmg(5).phys>incdmg(5).magic&player.rage>90'},
    {'Mark of Ursol', 'incdmg(5).magic>incdmg(5).phys&player.rage>90'},
	{'Ironfur', 'incdmg(5).phys>incdmg(5).magic&{!player.buff(Ironfur)&{player.buff(Guardian of Elune)||player.rage>65}}'},
	{'Mark of Ursol', 'incdmg(5).magic>incdmg(5).phys&{!player.buff(Mark of Ursol)&{player.buff(Guardian of Elune)||player.rage>65}}'},
    {'Ironfur', 'incdmg(5).phys>incdmg(5)&new_incdmg>{0.3*player.health.max}&player.rage>45'},
    {'Mark of Ursol', 'incdmg(5).magic>incdmg(5).phys&new_incdmg>{0.3*player.health.max}&player.rage>45'},
    {'Barkskin', 'new_incdmg>{0.25*player.health}&!player.buff(Ironfur)&!player.buff(Mark of Ursol)'},
    {'Survival Instincts', '!lastgcd(Barkskin)&new_incdmg>{0.75*player.health}&!player.buff(Barkskin)&!player.buff(Ironfur)&!player.buff(Mark of Ursol)'},
	{'Bristling Fur', '{new_incdmg/player.health.max}>{100-player.rage}&player.rage<45'},
	{'Incarnation: Guardian of Ursoc', 'target.ttd > 30'}
}

local AOE = {
	{'Thrash', nil, 'target'},
	{'Swipe', nil, 'target'},
}

local ST = {
	{'Moonfire', 'player.buff(Galactic Guardian)', 'target'},
	{'Mangle', nil, 'target'},
	{'Thrash', nil, 'target'},
	{'Moonfire', '!target.debuff', 'target'},
	{'Swipe', nil, 'target'},
}

local inCombat = {
	{Keybinds},
    {Interrupts, 'target.interruptAt(15)&toggle(interrupts)&target.infront&target.range<=8'},
	{Cooldowns, 'toggle(cooldowns)'},
	{'%taunt(Growl)', 'toggle(taunt)'},
    {AOE, 'player.area(8).enemies>=5&toggle(multitarget)'},
	{ST, 'target.inmelee'}
}

local outCombat = {
	{Keybinds},
}

NeP.CR:Add(104, '[|cff'..Rabbs.addonColor..'Rabbs|r] DRUID - Feral', inCombat, outCombat,exeOnLoad)
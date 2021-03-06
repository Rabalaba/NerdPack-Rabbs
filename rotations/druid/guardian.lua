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
}

local Cooldowns = {
	{'Frenzied Regeneration', '{player.health<=75&{new_incdmgp+new_incdmgm}>{0.00004*player.health*player.health*player.health.max}&!player.buff(Frenzied Regeneration)}||{player.health<=25&new_incdmg>{0.15*player.health.max}&!player.buff(Frenzied Regeneration)}'},
    {'Rage of the Sleeper', '{player.health<=60&{new_incdmgp+new_incdmgm}>{0.00005*player.health*player.health*player.health.max}&!player.buff(Frenzied Regeneration)}||{player.health<=20&new_incdmg>{0.2*player.health.max}&!player.buff(Frenzied Regeneration)}'},
    {'Ironfur', 'new_incdmgp>new_incdmgm&player.rage>90'},
    {'Mark of Ursol', 'new_incdmgm>new_incdmgp&player.rage>90'},
	{'Ironfur', 'new_incdmgp>new_incdmgm&{!player.buff(Ironfur)&{player.buff(Guardian of Elune)||player.rage>65}}'},
	{'Mark of Ursol', 'new_incdmgm>incdmg(5).phys&{!player.buff(Mark of Ursol)&{player.buff(Guardian of Elune)||player.rage>65}}'},
    {'Ironfur', 'new_incdmgp>new_incdmgm&{new_incdmgp+new_incdmgm}>{0.00002*player.health*player.health*player.health.max}&player.rage>45'},
    {'Mark of Ursol', 'new_incdmgm>new_incdmgp&{new_incdmgp+new_incdmgm}>{0.00004*player.health*player.health*player.health.max}&player.rage>45'},
    {'Barkskin', '{new_incdmgp+new_incdmgm}>{0.00002*player.health*player.health*player.health.max}&!player.buff(Ironfur)&!player.buff(Mark of Ursol)'},
    {'Bristling Fur', '{new_incdmgp+new_incdmgm}>{0.00002*player.health*player.health*player.health.max}&player.rage<40&talent(1,2)'},
    {'Barkskin', '{new_incdmgp+new_incdmgm}>{0.00006*player.health*player.health*player.health.max}'},
    {'Survival Instincts', '!lastgcd(Barkskin)&{new_incdmgp+new_incdmgm}>{0.0006*player.health*player.health*player.health.max}&!player.buff(Barkskin)&!player.buff(Ironfur)&!player.buff(Mark of Ursol)'},
    {'Survival Instincts', '!lastgcd(Barkskin)&{new_incdmgp+new_incdmgm}>{0.0012*player.health*player.health*player.health.max}'},
}



local ST = {
    {'%ressdead(Rebirth)'},
	{'Moonfire', 'player.buff(Galactic Guardian)', 'target'},
	{'Mangle', nil, 'target'},
    {'Pulverize', 'target.debuff(thrash).count>=3&talent(7,3)', 'target'},
	{'Thrash', nil, 'target'},
	{'Moonfire', '!target.debuff', 'target'},
	{'Swipe', nil, 'target'},
}

local inCombat = {
	{Keybinds},
    {Interrupts, 'target.interruptAt(1)&toggle(interrupts)&target.infront&target.range<=8'},
	{Cooldowns, 'toggle(cooldowns)'},
	{ST}
}

local outCombat = {
	{Keybinds},
    {'%ressdead(Revive)'},
}

NeP.CR:Add(104, '[|cff'..Rabbs.addonColor..'Rabbs|r] DRUID - Guardian', inCombat, outCombat,exeOnLoad)
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

local Cooldowns = {
	{'106951', 'player.buff(5217)'},
	{'102543', 'spell(5217).cooldown<gcd&talent(5,2)'},
	{'102543', 'player.energydiff>20&player.energy>35'},

}


--[[Finishing Moves]]
local EG = {
	{'202060'},
}

local HT = {
	{'8936'},
}

local SR = {
	{'52610'},
}

local FBA = {
	{'22568'},
}

local FBB = {
	{'22568', 'player.energy >= 50'},
}


local RP = {
	{'Rip'},
}

local GP = {
	{'202028', 'talent(7,1)'},
	{'210722', 'player.combopoints<=2&!player.buff(202060)&{player.buff(145152)||!talent(7,2)}&{player.buff(52610)||!talent(5,3)}'},
	{EG, 'talent(6,3)&player.combopoints<=0&spell(202060).cooldown<3'},
	{'106830', 'talent(7,2)&player.area(8).enemies>=9'},
	{'106785', 'player.area(8).enemies>=6'},
	{'1822', '!target.debuff(155722)'},
	{'1822', 'target.debuff(155722).duration <= 5'},
	{'1822', 'player.buff(145152)', '!lastcast(1822)'},
	{'155625', '!target.debuff(155625)'},
	{'155625', 'target.debuff(155625).duration < 4'},
	{'106785', 'player.area(8).enemies>=3'},
	{'5221'},
}
local Cat = {
	{'768', '!player.buff(768)'},
}

local Leap = {
	{'102401', 'target.range>8&target.range<25&talent(3,2)&player.buff(768)'},
}

local ST = {
	{'106951', 'player.buff(5217)'},
	{'102543', 'spell(5217).cooldown<gcd&talent(5,2)'},
	{'102543', 'player.energydiff>20&player.energy>35&talent(5,2)'},
	{'5217', '!player.buff(135700)&player.energydiff>=60}||player.energydiff>=80'},
	{FBA, 'target.debuff(1079)&target.debuff(1079).duration<3&ttd>3&{target.health<25||talent(6,1)}'},
	{HT, 'talent(7,2)&player.buff(69369)&!player.buff(145152)&{{player.combopoints>=5||player.buff(69369).duration<gcd}||{player.combopoints==2&spell(210722).cooldown<gcd}}'},
	{SR, '{!player.buff(52610)&{player.combopoints=5||!player.buff(52610)&{talent(7,1)&spell(202028).charges>0}&talent(5,2)}}'},
	{'106830', 'player.area(8).enemies>=5&{target.debuff(106830).duration<0.3||!target.debuff(106830)}'},
	{'106785', 'player.area(8).enemies>=8'},
	{RP, '{!target.debuff(1079)||{target.debuff(1079).duration<8&target.health>25&!talent(6,1)}}&{target.ttd>8&player.combopoints=5}&{player.energydiff<20||player.buff(106951)||player.buff(102543)||player.buff(202060)||spell(5217).cooldown<3||player.buff(135700)||talent(5,1)||!target.defuff(1079)||{target.debuff(1822).duration<1.5}}'},
	{SR, '{player.buff(52610).duration<=10.5||player.buff(52610).duration<=7.2&!talent(6,2)}&{player.combopoints>=5}&{player.energydiff<20||player.buff(106951)||player.buff(102543)||player.buff(202060)||spell(5217).cooldown<3||player.buff(135700)||talent(5,1)||!target.defuff(1079)||{target.debuff(1822).duration<1.5}}'},
	{FBB, 'player.combopoints>=5&{player.energydiff<20||player.buff(106951)||player.buff(102543)||player.buff(202060)||spell(5217).cooldown<3||{talent(7,3)&player.buff(135700)}}'},
	{GP, 'player.combopoints < 5'},

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

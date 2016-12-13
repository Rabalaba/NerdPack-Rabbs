local _, Rabbs = ...

local exeOnLoad = function()
	Rabbs.ExeOnLoad()

	print('|cffADFF2F ----------------------------------------------------------------------|r')
	print('|cffADFF2F --- |rDRUID |cffFFA500Resto |r')
	print('|cffADFF2F --- |rRecommended Talents: 1/3 - 2/1 - 3/1 - 4/3 - 5/3 - 6/1 - 7/1')
	print('|cffADFF2F ----------------------------------------------------------------------|r')

end
local Keybinds = {
	-- Pause
	{'%pause', 'keybind(alt)'},
	{'Efflorescence', 'keybind(shift)', 'cursor.ground'},
}

local ST = {
{'Cenarion Ward', 'lowestpredicted.health.predicted<=50', 'lowestpredicted'},
{'Regrowth', 'player.buff(Clearcasting)', 'lowestpredicted'},
{'Swiftmend', 'lowestpredicted.health.predicted<=50', 'lowestpredicted'},
{'Wild Growth', 'lowestpredicted5.health.predicted<=70', 'lowestpredicted'},
{'Flourish', 'lastcast(Wild Growth)'},
{'Essence of G\'Hanir', 'lastgcd(Flourish)'},
{'Lifebloom', '!lowest1(TANK).buff(Lifebloom)&!lowest2(TANK).buff(Lifebloom)', 'lowest1(TANK)'},
{'Regrowth', 'lowestpredicted.health.predicted<=40', 'lowestpredicted'},
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health.predicted<40', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(TANK,Rejuvenation).health.predicted<40', 'lnbuff2(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health.predicted<40', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health.predicted<40', 'lnbuff1(DAMAGER,Rejuvenation)'},
{'Regrowth', 'lowestpredicted.health.predicted<=60', 'lowestpredicted'},
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health.predicted<60', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(TANK,Rejuvenation).health.predicted<60', 'lnbuff2(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health.predicted<60', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health.predicted<60', 'lnbuff1(DAMAGER,Rejuvenation)'},
{'Healing Touch', 'lowestpredicted.health.predicted<=70', 'lowestpredicted'},
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health.predicted<80', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(TANK,Rejuvenation).health.predicted<80', 'lnbuff2(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health.predicted<80', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health.predicted<80', 'lnbuff1(DAMAGER,Rejuvenation)'},
{'Healing Touch', 'lowestpredicted.health<95', 'lowestpredicted'},
    

}

local Moving = {
{'Swiftmend', 'lowest1(TANK).health<70', 'lowest1(TANK)'},
{'Swiftmend', 'lowest2(TANK).health<70', 'lowest2(TANK)'},
{'Swiftmend', 'player.health<60', 'player'},
{'Swiftmend', 'lowest1(HEALER).health<60', 'lowest1(HEALER)'},
{'Swiftmend', 'lowest(DAMAGER).health<60', 'lowest(DAMAGER)'},
{'Lifebloom', '!lowest1(TANK).buff(Lifebloom)', 'lowest1(TANK)'},
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health.predicted<80', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(TANK,Rejuvenation).health.predicted<80', 'lnbuff2(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health.predicted<80', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health.predicted<80', 'lnbuff1(DAMAGER,Rejuvenation)'},
}

local inCombat = {
	{Keybinds},
	{Moving, 'player.moving'},
	{ST},
}



local outCombat = {
	{Keybinds},
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health<95', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health<90', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health<88', 'lnbuff1(DAMAGER,Rejuvenation)'},
    {'Rejuvenation', 'DTPS<=1', 'DTPS'},



}

NeP.CR:Add(105, '[|cff'..Rabbs.addonColor..'Rabbs|r] DRUID - Resto', inCombat, outCombat, exeOnLoad)

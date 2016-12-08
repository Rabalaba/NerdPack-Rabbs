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
{'Cenarion Ward', 'lowest1(tank).health<=80', 'lowest1(tank)'},
{'Regrowth', 'player.buff(Clearcasting)', 'lowest'},
{'Swiftmend', 'lowest1(TANK).health<70', 'lowest1(TANK)'},
{'Swiftmend', 'lowest2(TANK).health<70', 'lowest2(TANK)'},
{'Swiftmend', 'player.health<60', 'player'},
{'Swiftmend', 'lowest1(HEALER).health<60', 'lowest1(HEALER)'},
{'Swiftmend', 'lowest(DAMAGER).health<60', 'lowest(DAMAGER)'},
{'Wild Growth', 'lastcast(Swiftmend)', 'lowest1(TANK)'},
{'Wild Growth', 'lowest5.health<80', 'lowest1(TANK)'},
{'Flourish', 'lastcast(Wild Growth)'},
{'Essence of G\'Hanir', 'lastgcd(Flourish)'},
{'Lifebloom', '!lowest1(TANK).buff(Lifebloom)', 'lowest1(TANK)'},
{'Regrowth', 'lowest.health<50', 'lowest'},
{'Regrowth', { 'lowest1(TANK).health<35', 'player.buff(207640).count <= 3'}, 'lowest1(TANK)'},
{'Healing Touch', { 'lowest1(TANK).health<35', 'player.buff(207640).count > 3'}, 'lowest1(TANK)'},
{'Regrowth', { 'lowest2(TANK).health<35', 'player.buff(207640).count <= 3'}, 'lowest2(TANK)'},
{'Healing Touch', { 'lowest2(TANK).health<35', 'player.buff(207640).count > 3'}, 'lowest2(TANK)'},
{'Regrowth', { 'player.health<35', 'player.buff(207640).count <= 3'}, 'player'},
{'Healing Touch', { 'player.health<35', 'player.buff(207640).count > 3'}, 'player'},
{'Regrowth', { 'lowest1(HEALER).health<35', 'player.buff(207640).count <= 3'}, 'lowest1(HEALER)'},
{'Healing Touch', { 'lowest1(HEALER).health<35', 'player.buff(207640).count > 3'}, 'lowest1(HEALER)'},
{'Regrowth', { 'lowest1(DAMAGER).health<35', 'player.buff(207640).count <= 3'}, 'lowest1(DAMAGER)'},
{'Healing Touch', { 'lowest1(DAMAGER).health<35', 'player.buff(207640).count > 3'}, 'lowest1(DAMAGER)'},



{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation(Germination)).health<90', 'lnbuff1(TANK,Rejuvenation(Germination))'},
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health<90', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(TANK,Rejuvenation).health<90', 'lnbuff2(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health<80', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health<70', 'lnbuff1(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(HEALER,Rejuvenation).health<60', 'lnbuff2(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(DAMAGER,Rejuvenation).health<60', 'lnbuff2(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff3(HEALER,Rejuvenation).health<60', 'lnbuff3(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff3(DAMAGER,Rejuvenation).health<60', 'lnbuff3(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff4(HEALER,Rejuvenation).health<60', 'lnbuff4(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff4(DAMAGER,Rejuvenation).health<60', 'lnbuff4(DAMAGER,Rejuvenation)'},
{'Healing Touch', 'lowest1(TANK).health<50', 'lowest1(TANK)'},
{'Healing Touch', 'lowest2(TANK).health<50', 'lowest2(TANK)'},
{'Healing Touch', 'player.health<60', 'player'},
{'Healing Touch', 'lowest1(HEALER).health<60', 'lowest1(HEALER)'},
{'Healing Touch', 'lowest1(DAMAGER).health<60', 'lowest1(DAMAGER)'},
{'Healing Touch', 'lowest2(HEALER).health<60', 'lowest2(HEALER)'},
{'Healing Touch', 'lowest2(DAMAGER).health<60', 'lowest2(DAMAGER)'},
{'Healing Touch', 'lowest1(TANK).health<60', 'lowest1(TANK)'},
{'Healing Touch', 'lowest2(TANK).health<60', 'lowest2(TANK)'},
{'Healing Touch', 'player.health<70', 'player'},
{'Healing Touch', 'lowest1(HEALER).health<70', 'lowest1(HEALER)'},
{'Healing Touch', 'lowest1(DAMAGER).health<70', 'lowest1(DAMAGER)'},
{'Healing Touch', 'lowest2(HEALER).health<70', 'lowest2(HEALER)'},
{'Healing Touch', 'lowest2(DAMAGER).health<70', 'lowest2(DAMAGER)'},
{'Healing Touch', 'lowest1(TANK).health<60', 'lowest1(TANK)'},
{'Healing Touch', 'lowest2(TANK).health<60', 'lowest2(TANK)'},
{'Healing Touch', 'player.health<80', 'player'},
{'Healing Touch', 'lowest1(HEALER).health<80', 'lowest1(HEALER)'},
{'Healing Touch', 'lowest1(DAMAGER).health<80', 'lowest1(DAMAGER)'},
{'Healing Touch', 'lowest2(HEALER).health<80', 'lowest2(HEALER)'},
{'Healing Touch', 'lowest2(DAMAGER).health<80', 'lowest2(DAMAGER)'},
{'Healing Touch', 'lowest1(TANK).health<80', 'lowest1(TANK)'},
{'Healing Touch', 'lowest2(TANK).health<80', 'lowest2(TANK)'},
{'Healing Touch', 'lowest1(TANK).health<90', 'lowest1(TANK)'},
{'Healing Touch', 'lowest2(TANK).health<90', 'lowest2(TANK)'},

}

local Moving = {
{'Swiftmend', 'lowest1(TANK).health<70', 'lowest1(TANK)'},
{'Swiftmend', 'lowest2(TANK).health<70', 'lowest2(TANK)'},
{'Swiftmend', 'player.health<60', 'player'},
{'Swiftmend', 'lowest1(HEALER).health<60', 'lowest1(HEALER)'},
{'Swiftmend', 'lowest(DAMAGER).health<60', 'lowest(DAMAGER)'},
{'Lifebloom', '!lowest1(TANK).buff(Lifebloom)', 'lowest1(TANK)'},
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health<70', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health<60', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health<60', 'lnbuff1(DAMAGER,Rejuvenation)'},
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


}

NeP.CR:Add(105, '[|cff'..Rabbs.addonColor..'Rabbs|r] DRUID - Resto', inCombat, outCombat, exeOnLoad)

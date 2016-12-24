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
{'Cenarion Ward', 'lowest1(TANK).health.predicteddtps>cw.heals', 'lowest1(TANK)'},
{'Regrowth', 'player.buff(Clearcasting)&!lastcast(Regrowth)', 'lowestpredicted'},
{'Swiftmend', 'lowestpredictedd.health.predicteddtps>sm.heals', 'lowestpredictedd'},
{'Wild Growth', 'lowestpredicted5.health.predicteddtps>wg.heals', 'lowestpredicted'},
{'Flourish', 'lastcast(Wild Growth)'},
{'Essence of G\'Hanir', 'lastgcd(Flourish)'},
{'Regrowth', 'lowestpredictedd.health.predicteddtps>regrowth.heals&lowestpredictedd.health<50&!lastcast(Regrowth)',  'lowestpredictedd'},
{'Lifebloom', '!lowest1(TANK).buff(Lifebloom)&!lowest2(TANK).buff(Lifebloom)', 'lowest1(TANK)'},
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(TANK,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff2(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff1(DAMAGER,Rejuvenation)'},
{'Healing Touch', 'lowestpredictedd.health.predicteddtps>ht.heals',  'lowestpredictedd'},
    

}

local Moving = {
{'Swiftmend', 'lowestpredictedd.health.predicteddtps>sm.heals', 'lowestpredictedd'},
{'Lifebloom', '!lowest1(TANK).buff(Lifebloom)&!lowest2(TANK).buff(Lifebloom)', 'lowest1(TANK)'},
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(TANK,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff2(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff1(DAMAGER,Rejuvenation)'},
}

local inCombat = {
	{Keybinds},
	{Moving, 'player.moving'},
	{ST},
}



local outCombat = {
	{Keybinds},
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(TANK,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff2(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff1(DAMAGER,Rejuvenation)'},



}

NeP.CR:Add(105, '[|cff'..Rabbs.addonColor..'Rabbs|r] DRUID - Resto', inCombat, outCombat, exeOnLoad)

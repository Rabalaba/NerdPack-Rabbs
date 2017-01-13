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
	{'Healing Rain', 'keybind(shift)', 'cursor.ground'},
}

local RAID = {

}

local PARTY = {
{'Healing Surge', 'lowestpredicted1.health.predicteddtps>healingsurge.heals&lowestpredicted1.health<50',  'lowestpredicted1'},
{'Healing Surge', 'lowestpredicted1.health.predicteddtps>healingsurge.heals&lowestpredicted1.health<70&!lastcast(Healing Surge)',  'lowestpredicted1'},
{'Chain Heal', 'lowestpredicted3.health.predicteddtps>chainheal.heals', 'lowestpredicted'},
{'Riptide', 'lnbuff1(TANK,Riptide).health.predicteddtps>riptide.heals', 'lnbuff1(TANK,Riptide)'},
{'Riptide', 'lnbuff1(HEALER,Riptide).health.predicteddtps>riptide.heals', 'lnbuff1(HEALER,Riptide)'},
{'Riptide', 'lnbuff1(DAMAGER,Riptide).health.predicteddtps>riptide.heals', 'lnbuff1(DAMAGER,Riptide)'},
{'Riptide', 'lnbuff2(DAMAGER,Riptide).health.predicteddtps>riptide.heals', 'lnbuff2(DAMAGER,Riptide)'},
{'Riptide', 'lnbuff3(DAMAGER,Riptide).health.predicteddtps>riptide.heals', 'lnbuff3(DAMAGER,Riptide)'},
{'Healing Wave', 'lowestpredicted1(TANK).health.predicteddtps>healingwavetank.heals',  'lowestpredicted1(TANK)'},
{'Healing Wave', 'lowestpredicted1(HEALER).health.predicteddtps>healingwave.heals',  'lowestpredicted1(HEALER)'},
{'Healing Wave', 'lowestpredicted1(DAMAGER).health.predicteddtps>healingwave.heals',  'lowestpredicted1(DAMAGER)'},
{'Healing Wave', 'lowestpredicted2(DAMAGER).health.predicteddtps>healingwave.heals',  'lowestpredicted2(DAMAGER)'},
{'Healing Wave', 'lowestpredicted3(DAMAGER).health.predicteddtps>healingwave.heals',  'lowestpredicted3(DAMAGER)'},
}

local SOLO = {
{'Riptide', 'lowestpredictedd.health.predicteddtps>riptide.heals', 'player'},
{'Healing Surge', 'lowestpredictedd.health.predicteddtps>healingsurge.heals', 'player'},
{'Flame Shock', '!target.debuff'},
{'Lava Burst', nil, 'target'},
{'Lightning Bolt', nil, 'target'},
}

local Moving = {

}

local inCombat = {
	{Keybinds},
	{Moving, 'player.moving'},
    {RAID, 'partycheck=3'},
	{PARTY, 'partycheck=2' },
    {SOLO, 'partycheck=1'}
    
}



local outCombat = {
	{Keybinds},
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(TANK,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff2(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health.predicteddtps>rejuv.heals', 'lnbuff1(DAMAGER,Rejuvenation)'},



}

NeP.CR:Add(264, '[|cff'..Rabbs.addonColor..'Rabbs|r] Shaman - Resto', inCombat, outCombat, exeOnLoad)

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
	{'Efflorescence', 'keybind(shift)&totemcheck<2', 'cursor.ground'},
}

local RAID = {
{'/use 13', 'trinket1>0', 'player'},
{'Cenarion Ward', 'lowest1(TANK).health.missingpredicted>cwraid.heals', 'lowest1(TANK)'},
{'Regrowth', 'player.buff(Clearcasting)&!lastcast(Regrowth)', 'lowestpredicted'},
{'Swiftmend', 'lowestpredicted.health.missingpredicted>smraid.heals', 'lowestpredicted'},
{'Wild Growth', 'lowestpredicted5.health.missingpredicted>wgraid.heals', 'lowestpredicted'},
{'Flourish', 'lastcast(Wild Growth)'},
{'Essence of G\'Hanir', 'talent(7,3)&lastgcd(Flourish)'},
{'Essence of G\'Hanir', '!talent(7,3)&lastcast(Wild Growth)&lowest5.health<80'},
    
{'Regrowth', '!talent(1,3)&lowestpredicted1.health.missingpredicted>regrowthraid.heals&lowestpredicted.health<50&!lastcast(Regrowth)',  'lowestpredicted1'},
{'Regrowth', '!talent(1,3)&lowestpredicted2.health.missingpredicted>regrowthraid.heals&lowestpredicted.health<50&!lastcast(Regrowth)',  'lowestpredicted2'},
{'Regrowth', '!talent(1,3)&lowestpredicted3.health.missingpredicted>regrowthraid.heals&lowestpredicted.health<50&!lastcast(Regrowth)',  'lowestpredicted3'},
{'Regrowth', '!talent(1,3)&lowestpredicted4.health.missingpredicted>regrowthraid.heals&lowestpredicted.health<50&!lastcast(Regrowth)',  'lowestpredicted4'},
{'Regrowth', '!talent(1,3)&lowestpredicted5.health.missingpredicted>regrowthraid.heals&lowestpredicted.health<50&!lastcast(Regrowth)',  'lowestpredicted5'},
{'Regrowth', '!talent(1,3)&lowestpredicted6.health.missingpredicted>regrowthraid.heals&lowestpredicted.health<50&!lastcast(Regrowth)',  'lowestpredicted6'},

{'Regrowth', 'talent(1,3)&lowestpredicted1.health.missingpredicted>regrowthraid.heals&lowestpredicted.health<50&!lastcast(Regrowth)&player.buff(Abundance).count<4',  'lowestpredicted1'},
{'Regrowth', 'talent(1,3)&lowestpredicted2.health.missingpredicted>regrowthraid.heals&lowestpredicted.health<50&!lastcast(Regrowth)&player.buff(Abundance).count<4',  'lowestpredicted2'},
{'Regrowth', 'talent(1,3)&lowestpredicted3.health.missingpredicted>regrowthraid.heals&lowestpredicted.health<50&!lastcast(Regrowth)&player.buff(Abundance).count<4',  'lowestpredicted3'},
{'Regrowth', 'talent(1,3)&lowestpredicted4.health.missingpredicted>regrowthraid.heals&lowestpredicted.health<50&!lastcast(Regrowth)&player.buff(Abundance).count<4',  'lowestpredicted4'},
{'Regrowth', 'talent(1,3)&lowestpredicted5.health.missingpredicted>regrowthraid.heals&lowestpredicted.health<50&!lastcast(Regrowth)&player.buff(Abundance).count<4',  'lowestpredicted5'},
{'Regrowth', 'talent(1,3)&lowestpredicted6.health.missingpredicted>regrowthraid.heals&lowestpredicted.health<50&!lastcast(Regrowth)&player.buff(Abundance).count<4',  'lowestpredicted6'},
    
{'Lifebloom', '!lowest1(TANK).buff(Lifebloom)&!lowest2(TANK).buff(Lifebloom)', 'lowest1(TANK)'},
    
{'Rejuvenation', 'talent(6,3)&lnbuff1(TANK,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff1(TANK,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff1(TANK,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff2(TANK,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff2(TANK,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff2(TANK,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff1(HEALER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff1(HEALER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff1(HEALER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff2(HEALER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff2(HEALER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff2(HEALER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff3(HEALER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff3(HEALER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff3(HEALER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff4(HEALER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff4(HEALER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff4(HEALER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff5(HEALER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff5(HEALER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff5(HEALER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff6(HEALER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff6(HEALER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff6(HEALER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff1(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff1(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff1(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff2(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff2(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff2(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff3(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff3(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff3(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff4(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff4(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff4(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff5(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff5(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff5(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff6(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff6(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff6(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff7(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff7(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff7(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff8(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff8(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff8(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff9(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff9(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff9(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff10(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff10(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff10(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff11(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff11(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff11(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff12(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff12(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff12(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff13(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff13(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff13(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff14(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff14(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff14(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff15(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff15(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff15(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff16(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff16(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff16(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff17(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff17(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff17(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&lnbuff18(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff18(DAMAGER,Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff18(DAMAGER,Rejuvenation (Germination))'},
    
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(TANK,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff2(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(HEALER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff2(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff3(HEALER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff3(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff4(HEALER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff4(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff5(HEALER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff5(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff6(HEALER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff6(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff1(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff2(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff3(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff3(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff4(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff4(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff5(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff5(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff6(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff6(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff7(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff7(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff8(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff8(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff9(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff9(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff10(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff10(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff11(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff11(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff12(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff12(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff13(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff13(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff14(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff14(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff15(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff15(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff16(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff16(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff17(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff17(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff18(DAMAGER,Rejuvenation).health.missingpredicted>rejuvraid.heals', 'lnbuff18(DAMAGER,Rejuvenation)'},
    
{'Healing Touch', 'lowestpredicted1.health.missingpredicted>htraid.heals',  'lowestpredicted1'},
{'Healing Touch', 'lowestpredicted2.health.missingpredicted>htraid.heals',  'lowestpredicted2'},
{'Healing Touch', 'lowestpredicted3.health.missingpredicted>htraid.heals',  'lowestpredicted3'},
{'Healing Touch', 'lowestpredicted4.health.missingpredicted>htraid.heals',  'lowestpredicted4'},
{'Healing Touch', 'lowestpredicted5.health.missingpredicted>htraid.heals',  'lowestpredicted5'},
{'Healing Touch', 'lowestpredicted6.health.missingpredicted>htraid.heals',  'lowestpredicted6'},
{'Healing Touch', 'lowestpredicted7.health.missingpredicted>htraid.heals',  'lowestpredicted7'},
{'Healing Touch', 'lowestpredicted8.health.missingpredicted>htraid.heals',  'lowestpredicted8'},
{'Healing Touch', 'lowestpredicted9.health.missingpredicted>htraid.heals',  'lowestpredicted9'},
{'Healing Touch', 'lowestpredicted10.health.missingpredicted>htraid.heals',  'lowestpredicted10'},
{'Healing Touch', 'lowestpredicted11.health.missingpredicted>htraid.heals',  'lowestpredicted11'},
{'Healing Touch', 'lowestpredicted12.health.missingpredicted>htraid.heals',  'lowestpredicted12'},
{'Healing Touch', 'lowestpredicted13.health.missingpredicted>htraid.heals',  'lowestpredicted13'},
{'Healing Touch', 'lowestpredicted14.health.missingpredicted>htraid.heals',  'lowestpredicted14'},
{'Healing Touch', 'lowestpredicted15.health.missingpredicted>htraid.heals',  'lowestpredicted15'},
{'Healing Touch', 'lowestpredicted16.health.missingpredicted>htraid.heals',  'lowestpredicted16'},
{'Healing Touch', 'lowestpredicted17.health.missingpredicted>htraid.heals',  'lowestpredicted17'},
{'Healing Touch', 'lowestpredicted18.health.missingpredicted>htraid.heals',  'lowestpredicted18'},
{'Healing Touch', 'lowestpredicted19.health.missingpredicted>htraid.heals',  'lowestpredicted19'},
{'Healing Touch', 'lowestpredicted20.health.missingpredicted>htraid.heals',  'lowestpredicted20'},
{'Healing Touch', 'lowestpredicted21.health.missingpredicted>htraid.heals',  'lowestpredicted21'},
{'Healing Touch', 'lowestpredicted22.health.missingpredicted>htraid.heals',  'lowestpredicted22'},
{'Healing Touch', 'lowestpredicted23.health.missingpredicted>htraid.heals',  'lowestpredicted23'},
{'Healing Touch', 'lowestpredicted24.health.missingpredicted>htraid.heals',  'lowestpredicted24'},
{'Healing Touch', 'lowestpredicted25.health.missingpredicted>htraid.heals',  'lowestpredicted25'},

}

local PARTY = {
{'Cenarion Ward', 'lowest1(TANK).health.missingpredicted>cwparty.heals', 'lowest1(TANK)'},
{'Regrowth', 'player.buff(Clearcasting)&!lastcast(Regrowth)', 'lowestpredicted'},
{'Swiftmend', 'lowestpredicted.health.missingpredicted>smparty.heals', 'lowestpredicted'},
{'Wild Growth', 'lowestpredicted3.health.missingpredicted>wgparty.heals', 'lowestpredicted'},
{'Flourish', 'lastcast(Wild Growth)'},
{'Essence of G\'Hanir', 'lastgcd(Flourish)'},
{'Essence of G\'Hanir', 'talent(7,3)&lastgcd(Flourish)'},
{'Essence of G\'Hanir', '!talent(7,3)&lastcast(Wild Growth)&lowest5.health<80'},
    
{'Regrowth', 'lowest.health<30', 'lowest'},
    
{'Regrowth', '!talent(1,3)&lowestpredicted1.health.missingpredicted>regrowthparty.heals&lowestpredicted.health<50&!lastcast(Regrowth)',  'lowestpredicted1'},
{'Regrowth', '!talent(1,3)&lowestpredicted2.health.missingpredicted>regrowthparty.heals&lowestpredicted.health<50&!lastcast(Regrowth)',  'lowestpredicted2'},
{'Regrowth', '!talent(1,3)&lowestpredicted3.health.missingpredicted>regrowthparty.heals&lowestpredicted.health<50&!lastcast(Regrowth)',  'lowestpredicted3'},
{'Regrowth', '!talent(1,3)&lowestpredicted4.health.missingpredicted>regrowthparty.heals&lowestpredicted.health<50&!lastcast(Regrowth)',  'lowestpredicted4'},
{'Regrowth', '!talent(1,3)&lowestpredicted5.health.missingpredicted>regrowthparty.heals&lowestpredicted.health<50&!lastcast(Regrowth)',  'lowestpredicted5'},
{'Regrowth', '!talent(1,3)&lowestpredicted6.health.missingpredicted>regrowthparty.heals&lowestpredicted.health<50&!lastcast(Regrowth)',  'lowestpredicted6'},

{'Regrowth', 'talent(1,3)&lowestpredicted1.health.missingpredicted>regrowthparty.heals&lowestpredicted.health<50&player.buff(Abundance).count<4',  'lowestpredicted1'},
{'Regrowth', 'talent(1,3)&lowestpredicted2.health.missingpredicted>regrowthparty.heals&lowestpredicted.health<50&player.buff(Abundance).count<4',  'lowestpredicted2'},
{'Regrowth', 'talent(1,3)&lowestpredicted3.health.missingpredicted>regrowthparty.heals&lowestpredicted.health<50&player.buff(Abundance).count<4',  'lowestpredicted3'},
{'Regrowth', 'talent(1,3)&lowestpredicted4.health.missingpredicted>regrowthparty.heals&lowestpredicted.health<50&player.buff(Abundance).count<4',  'lowestpredicted4'},
{'Regrowth', 'talent(1,3)&lowestpredicted5.health.missingpredicted>regrowthparty.heals&lowestpredicted.health<50&player.buff(Abundance).count<4',  'lowestpredicted5'},
{'Regrowth', 'talent(1,3)&lowestpredicted6.health.missingpredicted>regrowthparty.heals&lowestpredicted.health<50&player.buff(Abundance).count<4',  'lowestpredicted6'},
    
{'Lifebloom', '!lowest1(TANK).buff(Lifebloom)&!lowest2(TANK).buff(Lifebloom)', 'lowest1(TANK)'},
    
{'Rejuvenation', 'talent(6,3)&!talent(1,3)&lnbuff1(TANK,Rejuvenation (Germination)).health.missingpredicted>rejuvparty.heals', 'lnbuff1(TANK,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&!talent(1,3)&lnbuff1(HEALER,Rejuvenation (Germination)).health.missingpredicted>rejuvparty.heals', 'lnbuff1(HEALER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&!talent(1,3)&lnbuff1(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>rejuvparty.heals', 'lnbuff1(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&!talent(1,3)&lnbuff2(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>rejuvparty.heals', 'lnbuff2(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&!talent(1,3)&lnbuff3(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>rejuvparty.heals', 'lnbuff3(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', '!talent(1,3)&lnbuff1(TANK,Rejuvenation).health.missingpredicted>rejuvparty.heals', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', '!talent(1,3)&lnbuff1(HEALER,Rejuvenation).health.missingpredicted>rejuvparty.heals', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', '!talent(1,3)&lnbuff1(DAMAGER,Rejuvenation).health.missingpredicted>rejuvparty.heals', 'lnbuff1(DAMAGER,Rejuvenation)'},
{'Rejuvenation', '!talent(1,3)&lnbuff2(DAMAGER,Rejuvenation).health.missingpredicted>rejuvparty.heals', 'lnbuff2(DAMAGER,Rejuvenation)'},
{'Rejuvenation', '!talent(1,3)&lnbuff3(DAMAGER,Rejuvenation).health.missingpredicted>rejuvparty.heals', 'lnbuff3(DAMAGER,Rejuvenation)'},
    
{'Rejuvenation', 'talent(6,3)&talent(1,3)&lnbuff1(TANK,Rejuvenation (Germination)).health.missingpredicted>rejuvparty.heals&player.buff(Abundance).count<6', 'lnbuff1(TANK,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&talent(1,3)&lnbuff1(HEALER,Rejuvenation (Germination)).health.missingpredicted>rejuvparty.heals&player.buff(Abundance).count<6', 'lnbuff1(HEALER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&talent(1,3)&lnbuff1(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>rejuvparty.heals&player.buff(Abundance).count<6', 'lnbuff1(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&talent(1,3)&lnbuff2(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>rejuvparty.heals&player.buff(Abundance).count<6', 'lnbuff2(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(6,3)&talent(1,3)&lnbuff3(DAMAGER,Rejuvenation (Germination)).health.missingpredicted>rejuvparty.heals&player.buff(Abundance).count<6', 'lnbuff3(DAMAGER,Rejuvenation (Germination))'},
{'Rejuvenation', 'talent(1,3)&lnbuff1(TANK,Rejuvenation).health.missingpredicted>rejuvparty.heals&player.buff(Abundance).count<6', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'talent(1,3)&lnbuff1(HEALER,Rejuvenation).health.missingpredicted>rejuvparty.heals&player.buff(Abundance).count<6', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'talent(1,3)&lnbuff1(DAMAGER,Rejuvenation).health.missingpredicted>rejuvparty.heals&player.buff(Abundance).count<6', 'lnbuff1(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'talent(1,3)&lnbuff2(DAMAGER,Rejuvenation).health.missingpredicted>rejuvparty.heals&player.buff(Abundance).count<6', 'lnbuff2(DAMAGER,Rejuvenation)'},
{'Rejuvenation', 'talent(1,3)&lnbuff3(DAMAGER,Rejuvenation).health.missingpredicted>rejuvparty.heals&player.buff(Abundance).count<6', 'lnbuff3(DAMAGER,Rejuvenation)'},

{'Healing Touch', '!talent(1,3)&lowestpredicted1(TANK).health.missingpredicted>htpartytank.heals',  'lowestpredicted1(TANK)'},
{'Healing Touch', '!talent(1,3)&lowestpredicted1(HEALER).health.missingpredicted>htpartyhealer.heals',  'lowestpredicted1(HEALER)'},
{'Healing Touch', '!talent(1,3)&lowestpredicted1(DAMAGER).health.missingpredicted>htpartydamager.heals',  'lowestpredicted1(DAMAGER)'},
{'Healing Touch', '!talent(1,3)&lowestpredicted2(DAMAGER).health.missingpredicted>htpartydamager.heals',  'lowestpredicted2(DAMAGER)'},
{'Healing Touch', '!talent(1,3)&lowestpredicted3(DAMAGER).health.missingpredicted>htpartydamager.heals',  'lowestpredicted3(DAMAGER)'},

{'Healing Touch', 'talent(1,3)&lowestpredicted1(TANK).health.missingpredicted>htpartytank.heals&player.buff(Abundance).count>=4',  'lowestpredicted1(TANK)'},
{'Healing Touch', 'talent(1,3)&lowestpredicted1(HEALER).health.missingpredicted>htpartyhealer.heals&player.buff(Abundance).count>=4',  'lowestpredicted1(HEALER)'},
{'Healing Touch', 'talent(1,3)&lowestpredicted1(DAMAGER).health.missingpredicted>htpartydamager.heals&player.buff(Abundance).count>=4',  'lowestpredicted1(DAMAGER)'},
{'Healing Touch', 'talent(1,3)&lowestpredicted2(DAMAGER).health.missingpredicted>htpartydamager.heals&player.buff(Abundance).count>=4',  'lowestpredicted2(DAMAGER)'},
{'Healing Touch', 'talent(1,3)&lowestpredicted3(DAMAGER).health.missingpredicted>htpartydamager.heals&player.buff(Abundance).count>=4',  'lowestpredicted3(DAMAGER)'},

{'Healing Touch', 'lowest.health<90', 'lowest'},
}

local SOLO = {

{'Cenarion Ward', 'player.health.missingpredicted>cwsolo.heals', 'player'},
{'Regrowth', 'player.buff(Clearcasting)&!lastcast(Regrowth)', 'player'},
{'Swiftmend', 'lowestpredictedd.health.missingpredicted>smsolo.heals', 'player'},
{'Wild Growth', 'lowestpredicted.health.missingpredicted>wgsolo.heals', 'player'},
{'Flourish', 'lastcast(Wild Growth)'},
{'Essence of G\'Hanir', 'lastgcd(Flourish)'},
{'Regrowth', 'lowestpredictedd.health.missingpredicted>regrowthsolo.heals&lowestpredictedd.health<80&!lastcast(Regrowth)',  'player'},
{'Lifebloom', 'talent(1,3)&!player.buff(Lifebloom)', 'player'},
{'Rejuvenation', 'player.health.missingpredicted>rejuvsolo.heals&!player.buff(Rejuvenation)', 'player'},
{'Healing Touch', 'lowestpredictedd.health.missingpredicted>htsolo.heals',  'player'},
}

local Moving = {
{'Swiftmend', 'lowestpredictedd.health.missingpredicted>sm.heals', 'lowestpredictedd'},
{'Lifebloom', '!lowest1(TANK).buff(Lifebloom)&!lowest2(TANK).buff(Lifebloom)', 'lowest1(TANK)'},
{'Rejuvenation', 'talent(6,3)&lnbuff1(Rejuvenation (Germination)).health.missingpredicted>germraid.heals&lnbuff1(Rejuvenation (Germination)).buff(Rejuvenation)', 'lnbuff1(TANK,Rejuvenation (Germination))'},
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health.missingpredicted>rejuv.heals', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(TANK,Rejuvenation).health.missingpredicted>rejuv.heals', 'lnbuff2(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health.missingpredicted>rejuv.heals', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health.missingpredicted>rejuv.heals', 'lnbuff1(DAMAGER,Rejuvenation)'},
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
{'Rejuvenation', 'lnbuff1(TANK,Rejuvenation).health.missingpredicted>rejuv.heals', 'lnbuff1(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff2(TANK,Rejuvenation).health.missingpredicted>rejuv.heals', 'lnbuff2(TANK,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(HEALER,Rejuvenation).health.missingpredicted>rejuv.heals', 'lnbuff1(HEALER,Rejuvenation)'},
{'Rejuvenation', 'lnbuff1(DAMAGER,Rejuvenation).health.missingpredicted>rejuv.heals', 'lnbuff1(DAMAGER,Rejuvenation)'},



}

NeP.CR:Add(105, '[|cff'..Rabbs.addonColor..'Rabbs|r] DRUID - Resto', inCombat, outCombat, exeOnLoad)

local _, Rabbs = ...
local GUI = {

}

local exeOnLoad = function()
	Rabbs.ExeOnLoad()


    
    NeP.Interface:AddToggle({
		key = 'lcd',
		name = 'Long Cool Downs',
		text = 'ON/OFF using long cooldowns in rotation',
		icon = 'Interface\\Icons\\spell_deathknight_empowerruneblade2',
	})
    
    NeP.Interface:AddToggle({
		key = 'scd',
		name = 'Short Cool Downs',
		text = 'ON/OFF using short cooldowns in rotation',
		icon = 'Interface\\Icons\\ability_deathknight_pillaroffrost',
	})

end
local GUI = {
	{type = 'header', text = 'Keybinds:'},
	{type = 'text', text = 'Alt: Pause'},
}

local Keybinds = {
	{'%pause', 'keybind(alt)'},
}

local Precombat = {
}

local Survival = {

}

local Interrupts = {
	{'Kick'},
	
}

local SCD = {
{'Aberration', 'Rabbs1= 68976', 'target'},
{'Apprentice Riding', 'Rabbs1= 33388', 'target'},
{'Armor Skills', 'Rabbs1= 76273', 'target'},
{'Artisan Riding', 'Rabbs1= 34091', 'target'},
{'Auto Attack', 'Rabbs1= 6603', 'target'},
{'Cheap Shot', 'Rabbs1= 1833', 'target'},
{'Cloak of Shadows', 'Rabbs1= 31224', 'target'},
{'Cold Weather Flying', 'Rabbs1= 54197', 'target'},
{'Crimson Vial', 'Rabbs1= 185311', 'target'},
{'Crippling Poison', 'Rabbs1= 3408', 'target'},
{'Darkflight', 'Rabbs1= 68992', 'target'},
{'Deadly Poison', 'Rabbs1= 2823', 'target'},
{'Distract', 'Rabbs1= 1725', 'target'},
{'Envenom', 'Rabbs1= 196819', 'target'},
{'Envenom', 'Rabbs1= 32645', 'target'},
{'Evasion', 'Rabbs1= 5277', 'target'},
{'Fan of Knives', 'Rabbs1= 51723', 'target'},
{'Feint', 'Rabbs1= 1966', 'target'},
{'Flayer', 'Rabbs1= 68978', 'target'},
{'Fleet Footed', 'Rabbs1= 31209', 'target'},
{'Flight Master\'s License', 'Rabbs1= 90267', 'target'},
{'Garrote', 'Rabbs1= 703', 'target'},
{'Kick', 'Rabbs1= 1766', 'target'},
{'Kidney Shot', 'Rabbs1= 408', 'target'},
{'Languages', 'Rabbs1= 79742', 'target'},
{'Mastery:  Potent Poisons', 'Rabbs1= 76803', 'target'},
{'Mutilate', 'Rabbs1= 1329', 'target'},
{'Mutilate', 'Rabbs1= 1752', 'target'},
{'Pick Lock', 'Rabbs1= 1804', 'target'},
{'Pick Pocket', 'Rabbs1= 921', 'target'},
{'Poisoned Knife', 'Rabbs1= 185565', 'target'},
{'Revive Battle Pets', 'Rabbs1= 125439', 'target'},
{'Running Wild', 'Rabbs1= 87840', 'target'},
{'Rupture', 'Rabbs1= 1943', 'target'},
{'Sap', 'Rabbs1= 6770', 'target'},
{'Seal Fate', 'Rabbs1= 14190', 'target'},
{'Shadowstep', 'Rabbs1= 36554', 'target'},
{'Sprint', 'Rabbs1= 2983', 'target'},
{'Stealth', 'Rabbs1= 1784', 'target'},
{'Tricks of the Trade', 'Rabbs1= 57934', 'target'},
{'Two Forms', 'Rabbs1= 68996', 'target'},
{'Vanish', 'Rabbs1= 1856', 'target'},
{'Vendetta', 'Rabbs1= 79140', 'target'},
{'Venomous Wounds', 'Rabbs1= 79134', 'target'},
{'Viciousness', 'Rabbs1= 68975', 'target'},
{'Weapon Skills', 'Rabbs1= 76297', 'target'},
{'Wisdom of the Four Winds', 'Rabbs1= 115913', 'target'},
{'Wound Poison', 'Rabbs1= 8679', 'target'},
{'Leeching Poison', 'Rabbs1= 108211', 'target'},
{'Agonizing Poison', 'Rabbs1= 200802', 'target'},
{'Kingsbane', 'Rabbs1= 222062', 'target'},
{'Marked for Death', 'Rabbs1= 137619', 'target'},
{'Hemorrhage', 'Rabbs1= 16511', 'target'},
{'Exsanguinate', 'Rabbs1=  200806', 'target'},
{'Death from Above', 'Rabbs1=  152150', 'target'},
}

local LCD = {
{'Aberration', 'Rabbs4= 68976', 'target'},
{'Apprentice Riding', 'Rabbs4= 33388', 'target'},
{'Armor Skills', 'Rabbs4= 76273', 'target'},
{'Artisan Riding', 'Rabbs4= 34091', 'target'},
{'Auto Attack', 'Rabbs4= 6603', 'target'},
{'Cheap Shot', 'Rabbs4= 1833', 'target'},
{'Cloak of Shadows', 'Rabbs4= 31224', 'target'},
{'Cold Weather Flying', 'Rabbs4= 54197', 'target'},
{'Crimson Vial', 'Rabbs4= 185311', 'target'},
{'Crippling Poison', 'Rabbs4= 3408', 'target'},
{'Darkflight', 'Rabbs4= 68992', 'target'},
{'Deadly Poison', 'Rabbs4= 2823', 'target'},
{'Distract', 'Rabbs4= 1725', 'target'},
{'Envenom', 'Rabbs4= 196819', 'target'},
{'Envenom', 'Rabbs4= 32645', 'target'},
{'Evasion', 'Rabbs4= 5277', 'target'},
{'Fan of Knives', 'Rabbs4= 51723', 'target'},
{'Feint', 'Rabbs4= 1966', 'target'},
{'Flayer', 'Rabbs4= 68978', 'target'},
{'Fleet Footed', 'Rabbs4= 31209', 'target'},
{'Flight Master\'s License', 'Rabbs4= 90267', 'target'},
{'Garrote', 'Rabbs4= 703', 'target'},
{'Kick', 'Rabbs4= 1766', 'target'},
{'Kidney Shot', 'Rabbs4= 408', 'target'},
{'Languages', 'Rabbs4= 79742', 'target'},
{'Mastery:  Potent Poisons', 'Rabbs4= 76803', 'target'},
{'Mutilate', 'Rabbs4= 1329', 'target'},
{'Mutilate', 'Rabbs4= 1752', 'target'},
{'Pick Lock', 'Rabbs4= 1804', 'target'},
{'Pick Pocket', 'Rabbs4= 921', 'target'},
{'Poisoned Knife', 'Rabbs4= 185565', 'target'},
{'Revive Battle Pets', 'Rabbs4= 125439', 'target'},
{'Running Wild', 'Rabbs4= 87840', 'target'},
{'Rupture', 'Rabbs4= 1943', 'target'},
{'Sap', 'Rabbs4= 6770', 'target'},
{'Seal Fate', 'Rabbs4= 14190', 'target'},
{'Shadowstep', 'Rabbs4= 36554', 'target'},
{'Sprint', 'Rabbs4= 2983', 'target'},
{'Stealth', 'Rabbs4= 1784', 'target'},
{'Tricks of the Trade', 'Rabbs4= 57934', 'target'},
{'Two Forms', 'Rabbs4= 68996', 'target'},
{'Vanish', 'Rabbs4= 1856', 'target'},
{'Vendetta', 'Rabbs4= 79140', 'target'},
{'Venomous Wounds', 'Rabbs4= 79134', 'target'},
{'Viciousness', 'Rabbs4= 68975', 'target'},
{'Weapon Skills', 'Rabbs4= 76297', 'target'},
{'Wisdom of the Four Winds', 'Rabbs4= 115913', 'target'},
{'Wound Poison', 'Rabbs4= 8679', 'target'},
{'Leeching Poison', 'Rabbs4= 108211', 'target'},
{'Agonizing Poison', 'Rabbs4= 200802', 'target'},
{'Kingsbane', 'Rabbs4= 222062', 'target'},
{'Marked for Death', 'Rabbs4= 137619', 'target'},
{'Hemorrhage', 'Rabbs4= 16511', 'target'},
{'Exsanguinate', 'Rabbs4=  200806', 'target'},
{'Death from Above', 'Rabbs2=  152150', 'target'},


}

local AOE = {
{'Aberration', 'Rabbs3= 68976', 'target'},
{'Apprentice Riding', 'Rabbs3= 33388', 'target'},
{'Armor Skills', 'Rabbs3= 76273', 'target'},
{'Artisan Riding', 'Rabbs3= 34091', 'target'},
{'Auto Attack', 'Rabbs3= 6603', 'target'},
{'Cheap Shot', 'Rabbs3= 1833', 'target'},
{'Cloak of Shadows', 'Rabbs3= 31224', 'target'},
{'Cold Weather Flying', 'Rabbs3= 54197', 'target'},
{'Crimson Vial', 'Rabbs3= 185311', 'target'},
{'Crippling Poison', 'Rabbs3= 3408', 'target'},
{'Darkflight', 'Rabbs3= 68992', 'target'},
{'Deadly Poison', 'Rabbs3= 2823', 'target'},
{'Distract', 'Rabbs3= 1725', 'target'},
{'Envenom', 'Rabbs3= 196819', 'target'},
{'Envenom', 'Rabbs3= 32645', 'target'},
{'Evasion', 'Rabbs3= 5277', 'target'},
{'Fan of Knives', 'Rabbs3= 51723', 'target'},
{'Feint', 'Rabbs3= 1966', 'target'},
{'Flayer', 'Rabbs3= 68978', 'target'},
{'Fleet Footed', 'Rabbs3= 31209', 'target'},
{'Flight Master\'s License', 'Rabbs3= 90267', 'target'},
{'Garrote', 'Rabbs3= 703', 'target'},
{'Kick', 'Rabbs3= 1766', 'target'},
{'Kidney Shot', 'Rabbs3= 408', 'target'},
{'Languages', 'Rabbs3= 79742', 'target'},
{'Mastery:  Potent Poisons', 'Rabbs3= 76803', 'target'},
{'Mutilate', 'Rabbs3= 1329', 'target'},
{'Mutilate', 'Rabbs3= 1752', 'target'},
{'Pick Lock', 'Rabbs3= 1804', 'target'},
{'Pick Pocket', 'Rabbs3= 921', 'target'},
{'Poisoned Knife', 'Rabbs3= 185565', 'target'},
{'Revive Battle Pets', 'Rabbs3= 125439', 'target'},
{'Running Wild', 'Rabbs3= 87840', 'target'},
{'Rupture', 'Rabbs3= 1943', 'target'},
{'Sap', 'Rabbs3= 6770', 'target'},
{'Seal Fate', 'Rabbs3= 14190', 'target'},
{'Shadowstep', 'Rabbs3= 36554', 'target'},
{'Sprint', 'Rabbs3= 2983', 'target'},
{'Stealth', 'Rabbs3= 1784', 'target'},
{'Tricks of the Trade', 'Rabbs3= 57934', 'target'},
{'Two Forms', 'Rabbs3= 68996', 'target'},
{'Vanish', 'Rabbs3= 1856', 'target'},
{'Vendetta', 'Rabbs3= 79140', 'target'},
{'Venomous Wounds', 'Rabbs3= 79134', 'target'},
{'Viciousness', 'Rabbs3= 68975', 'target'},
{'Weapon Skills', 'Rabbs3= 76297', 'target'},
{'Wisdom of the Four Winds', 'Rabbs3= 115913', 'target'},
{'Wound Poison', 'Rabbs3= 8679', 'target'},
{'Leeching Poison', 'Rabbs3= 108211', 'target'},
{'Agonizing Poison', 'Rabbs3= 200802', 'target'},
{'Kingsbane', 'Rabbs3= 222062', 'target'},
{'Marked for Death', 'Rabbs3= 137619', 'target'},
{'Hemorrhage', 'Rabbs3= 16511', 'target'},
{'Exsanguinate', 'Rabbs3=  200806', 'target'},
{'Death from Above', 'Rabbs3=  152150', 'target'},
}

local ST = {
{'Aberration', 'Rabbs2= 68976', 'target'},
{'Apprentice Riding', 'Rabbs2= 33388', 'target'},
{'Armor Skills', 'Rabbs2= 76273', 'target'},
{'Artisan Riding', 'Rabbs2= 34091', 'target'},
{'Auto Attack', 'Rabbs2= 6603', 'target'},
{'Cheap Shot', 'Rabbs2= 1833', 'target'},
{'Cloak of Shadows', 'Rabbs2= 31224', 'target'},
{'Cold Weather Flying', 'Rabbs2= 54197', 'target'},
{'Crimson Vial', 'Rabbs2= 185311', 'target'},
{'Crippling Poison', 'Rabbs2= 3408', 'target'},
{'Darkflight', 'Rabbs2= 68992', 'target'},
{'Deadly Poison', 'Rabbs2= 2823', 'target'},
{'Distract', 'Rabbs2= 1725', 'target'},
{'Envenom', 'Rabbs2= 196819', 'target'},
{'Envenom', 'Rabbs2= 32645', 'target'},
{'Evasion', 'Rabbs2= 5277', 'target'},
{'Fan of Knives', 'Rabbs2= 51723', 'target'},
{'Feint', 'Rabbs2= 1966', 'target'},
{'Flayer', 'Rabbs2= 68978', 'target'},
{'Fleet Footed', 'Rabbs2= 31209', 'target'},
{'Flight Master\'s License', 'Rabbs2= 90267', 'target'},
{'Garrote', 'Rabbs2= 703', 'target'},
{'Kick', 'Rabbs2= 1766', 'target'},
{'Kidney Shot', 'Rabbs2= 408', 'target'},
{'Languages', 'Rabbs2= 79742', 'target'},
{'Mastery:  Potent Poisons', 'Rabbs2= 76803', 'target'},
{'Mutilate', 'Rabbs2= 1329', 'target'},
{'Mutilate', 'Rabbs2= 1752', 'target'},
{'Pick Lock', 'Rabbs2= 1804', 'target'},
{'Pick Pocket', 'Rabbs2= 921', 'target'},
{'Poisoned Knife', 'Rabbs2= 185565', 'target'},
{'Revive Battle Pets', 'Rabbs2= 125439', 'target'},
{'Running Wild', 'Rabbs2= 87840', 'target'},
{'Rupture', 'Rabbs2= 1943', 'target'},
{'Sap', 'Rabbs2= 6770', 'target'},
{'Seal Fate', 'Rabbs2= 14190', 'target'},
{'Shadowstep', 'Rabbs2= 36554', 'target'},
{'Sprint', 'Rabbs2= 2983', 'target'},
{'Stealth', 'Rabbs2= 1784', 'target'},
{'Tricks of the Trade', 'Rabbs2= 57934', 'target'},
{'Two Forms', 'Rabbs2= 68996', 'target'},
{'Vanish', 'Rabbs2= 1856', 'target'},
{'Vendetta', 'Rabbs2= 79140', 'target'},
{'Venomous Wounds', 'Rabbs2= 79134', 'target'},
{'Viciousness', 'Rabbs2= 68975', 'target'},
{'Weapon Skills', 'Rabbs2= 76297', 'target'},
{'Wisdom of the Four Winds', 'Rabbs2= 115913', 'target'},
{'Wound Poison', 'Rabbs2= 8679', 'target'},
{'Leeching Poison', 'Rabbs2= 108211', 'target'},
{'Agonizing Poison', 'Rabbs2= 200802', 'target'},
{'Kingsbane', 'Rabbs2= 222062', 'target'},
{'Marked for Death', 'Rabbs2= 137619', 'target'},
{'Hemorrhage', 'Rabbs2= 16511', 'target'},
{'Exsanguinate', 'Rabbs2=  200806', 'target'},
{'Death from Above', 'Rabbs2=  152150', 'target'},
    


}


local inCombat = {
	{Keybinds},
    {Interrupts, 'target.interruptAt(15)'},
    {Survival, 'player.health<100'},
    {LCD, 'toggle(lcd)'},
	{SCD, 'toggle(scd)'},
    {AOE, {'player.area(8).enemies>=1&toggle(aoe)'}},
	{ST, {'target.range < 8', 'target.infront'}},
}

local outCombat = {
	{Keybinds},
	{Precombat},
}

NeP.CR:Add(259, {
	name = '[|cff'..Rabbs.addonColor..'Rabbs|r] Rogue - Assassination',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})

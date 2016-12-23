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
{ "/targetenemy [noexists]", "!target.exists" },
{'Drain Life', 'player.health<30', 'target'},
}

local Interrupts = {
	{'Shadow Lock'},
	
}

local SCD = {

 
}

local LCD = {


}

local AOE = {


}

local ST = {
{'Agony', 'ldebuff(Agony).range<40', 'ldebuff(Agony)'},


}


local inCombat = {
	{Keybinds},
    {Interrupts, 'target.interruptAt(15)'},
    {Survival, 'player.health<100'},
    {LCD, 'toggle(lcd)'},
	{SCD, 'toggle(scd)'},
    {AOE, {'toggle(aoe)'}},
	{ST},
}

local outCombat = {
	{Keybinds},
	{Precombat},
}

NeP.CR:Add(265, {
	name = '[|cff'..Rabbs.addonColor..'Rabbs|r] Warlock - Affliction',
	  ic = inCombat,
	 ooc = outCombat,
	 gui = GUI,
	load = exeOnLoad
})

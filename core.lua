local _, Rabbs = ...

Rabbs.Version = '1.1.1'
Rabbs.Branch = 'RELEASE'
Rabbs.Name = 'NerdPack - Rabbs Routines'
Rabbs.Author = 'Rabbs'
Rabbs.addonColor = 'FFA500'
Rabbs.Logo = 'Interface\\AddOns\\NerdPack-Rabbs\\media\\logo.blp'
Rabbs.Splash = 'Interface\\AddOns\\NerdPack-Rabbs\\media\\splash.blp'
Rabbs.class = select(3,UnitClass("player"))

function Rabbs.ExeOnLoad()
		Rabbs.Splash()
end
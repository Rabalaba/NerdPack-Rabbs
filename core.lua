local _, Rabbs = ...

Rabbs.Version = '1.1.1'
Rabbs.Branch = 'RELEASE'
Rabbs.Name = 'NerdPack - Rabbs Routines'
Rabbs.Author = 'Rabbs'
Rabbs.addonColor = 'FFA500'
Rabbs.Logo = 'Interface\\AddOns\\NerdPack-Rabbs\\media\\logo.blp'
Rabbs.Splash = 'Interface\\AddOns\\NerdPack-Rabbs\\media\\splash.blp'


function Rabbs.ExeOnLoad()
		Rabbs.Splash()
end



--------------------------------------------------------------------------------
---------------------------------FERAL------------------------------------------
--------------------------------------------------------------------------------

local damageTableP = {}
local damageTableM = {}
local updateInterval = 0.1
local eventIndex = 0
local playerGUID
local timeElapsed = 0
local damageTP5SP = 0
local damageTP5SM = 0
local idFR = 22842

local lowTransparency = 0.7
local mediumTransparency = 0.5
local highTransparency = 0.3

settingsFR = {}

local frenzyRegenFrame = CreateFrame("Frame", "renzyRegenFrame", UIParent)
frenzyRegenFrame:SetSize(0, 0)
frenzyRegenFrame:ClearAllPoints()
frenzyRegenFrame:SetPoint("CENTER", UIParent)
frenzyRegenFrame:SetBackdrop({
    bgFile   = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 16,
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 12,
    insets = { left = 3, right = 3, top = 3, bottom = 3, },
})
frenzyRegenFrame:SetBackdropColor(0, 0, 0, 0.4)
frenzyRegenFrame:SetBackdropBorderColor(0, 0, 0, 1)

frenzyRegenFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
frenzyRegenFrame:RegisterEvent("ADDON_LOADED")
frenzyRegenFrame:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
frenzyRegenFrame:RegisterEvent("UPDATE_SHAPESHIFT_FORM")
frenzyRegenFrame:RegisterEvent("PLAYER_REGEN_DISABLED");
frenzyRegenFrame:RegisterEvent("PLAYER_REGEN_ENABLED")
frenzyRegenFrame:RegisterEvent("ARTIFACT_UPDATE") 

frenzyRegenFrame:EnableMouse(true)
frenzyRegenFrame:SetMovable(true)
frenzyRegenFrame:RegisterForDrag("LeftButton")
frenzyRegenFrame:SetScript("OnDragStart", frenzyRegenFrame.StartMoving)
frenzyRegenFrame:SetScript("OnDragStop",function(self)
 self:StopMovingOrSizing()
 settingsFR.XPos = self:GetLeft()
 settingsFR.YPos = self:GetBottom()
end)

frenzyRegenFrame.damageTakenBar = CreateFrame("StatusBar", nil, frenzyRegenFrame)
frenzyRegenFrame.damageTakenBar:SetPoint("TOPLEFT", 3, -3)
frenzyRegenFrame.damageTakenBar:SetPoint("TOPRIGHT", -3, -3)
frenzyRegenFrame.damageTakenBar:SetHeight(20)
frenzyRegenFrame.damageTakenBar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
frenzyRegenFrame.damageTakenBar:GetStatusBarTexture():SetHorizTile(false)
frenzyRegenFrame.damageTakenBar:GetStatusBarTexture():SetVertTile(false)
frenzyRegenFrame.damageTakenBar:SetMinMaxValues(0, 100)
frenzyRegenFrame.damageTakenBar:SetStatusBarColor(0, 0.65, 0)


frenzyRegenFrame.damageTakenBar.bg = frenzyRegenFrame.damageTakenBar:CreateTexture(nil, "BACKGROUND")
frenzyRegenFrame.damageTakenBar.bg:SetTexture("Interface\\TARGETINGFRAME\\UI-StatusBar")
frenzyRegenFrame.damageTakenBar.bg:SetAllPoints(true)
frenzyRegenFrame.damageTakenBar.bg:SetVertexColor(0, 0.35, 0)

frenzyRegenFrame.damageTakenBar.value = frenzyRegenFrame.damageTakenBar:CreateFontString(nil, "OVERLAY")
frenzyRegenFrame.damageTakenBar.value:SetPoint("CENTER", frenzyRegenFrame.damageTakenBar, "CENTER", 4, 0)
frenzyRegenFrame.damageTakenBar.value:SetFont("Fonts\\FRIZQT__.TTF", 16, "OUTLINE")
frenzyRegenFrame.damageTakenBar.value:SetJustifyH("LEFT")
frenzyRegenFrame.damageTakenBar.value:SetShadowOffset(1, -1)
frenzyRegenFrame.damageTakenBar.value:SetTextColor(0, 1, 0)

function frenzyRegenFrame:getShortNumber(num)
  if settingsFR.shortNumFlag then    
    if not num then
      return 0
    elseif num >= 1e6 then
      return format("%.1fM", num / 1e6)
    elseif num >= 1e3 then
      return format("%.1fK", num / 1e3)
    else
      return format("%d", num)
    end  
  else
    return format("%d", num)  
  end
end

function frenzyRegenFrame:countHealing()
  maxHP = UnitHealthMax("player")
  
  versatilityBonus = GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE) + GetVersatilityBonus(CR_VERSATILITY_DAMAGE_DONE)
  expectedHealing =  math.max(maxHP*0.05,damageTP5SP*0.5)*(1+versatilityBonus/100)
  legendaryHealing = 0
  Rabbs.tincdmgP = damageTP5SP
  Rabbs.tincdmgM = damageTP5SM

NeP.DSL:Register('new_incdmgp', function()
  return Rabbs.tincdmgP
end)
    
NeP.DSL:Register('new_incdmgm', function()
  return Rabbs.tincdmgM
end)
  
  if IsEquippedItem(137025) and settingsFR.legendaryFlag then -- Skysec's Hold
    legendaryHealing = maxHP*0.12*(1+versatilityBonus/100)
  end
  
  if GetSpecialization() == 3 and settingsFR.masteryFlag then
    mastery, coefficient = GetMasteryEffect()
    expectedHealing = expectedHealing*(1+mastery/100)
    legendaryHealing = legendaryHealing*(1+mastery/100)
  end
   
  local t18set = {124246, 124255, 124261, 124267, 124272}
  local t18items = 0
  for i=1,5,1 do
    if IsEquippedItem(t18set[i]) then
        t18items = t18items + 1
    end    
  end
  isT18eq = t18items > 1  
  
  local idx = 1
  repeat
    local name, _, _, _, _, _, _, _, _, _, spellID = UnitAura("player", idx, nil, "PLAYER|HELPFUL|CANCELABLE")
    if spellID and spellID == 213680 then -- Guardian of Elune          
      expectedHealing = expectedHealing*1.2
    elseif isT18eq and spellID and spellID == 192081 then -- Ironfur id
      expectedHealing = expectedHealing*1.2
    elseif spellID and spellID == 47788 then -- Guardian Spirit
      expectedHealing = expectedHealing*1.4
    elseif spellID and spellID == 64844 then -- Divine Hymn
      expectedHealing = expectedHealing*1.1
    elseif spellID and spellID == 116849 then -- Life Cocoon
      expectedHealing = expectedHealing*1.5
    elseif spellID and spellID == 199368 then -- Legacy of the Ravencrest
      expectedHealing = expectedHealing*4
    end
    idx = idx + 1
  until name == nil
  
  if IsEquippedItem(128821) then
    expectedHealing = expectedHealing*(1+settingsFR.artifactBonus)
  end

  ratioHP = (expectedHealing+legendaryHealing)/maxHP*100  
  frenzyRegenFrame.damageTakenBar:SetValue(ratioHP)
  if settingsFR.displayFlag == 0 then
    frenzyRegenFrame.damageTakenBar.value:SetText(self:getShortNumber(expectedHealing+legendaryHealing))
  elseif settingsFR.displayFlag == 1 then
    frenzyRegenFrame.damageTakenBar.value:SetText(self:getShortNumber(expectedHealing/6))
  else if settingsFR.displayFlag == 2 then  
    frenzyRegenFrame.damageTakenBar.value:SetText(format("%d%%", ratioHP))
  end
  end  

  start = GetSpellCooldown(idFR)
  if start ~= 0 and settingsFR.greyOutFlag then
    frenzyRegenFrame.damageTakenBar:SetStatusBarColor(0.212,0.212,0.212,settingsFR.transparencyFlag)
    frenzyRegenFrame.damageTakenBar.bg:SetVertexColor(0.1,0.1,0.1,settingsFR.transparencyFlag)
    frenzyRegenFrame.damageTakenBar.value:SetTextColor(0.5, 0.5, 0.5,settingsFR.transparencyFlag)
  else
    frenzyRegenFrame.damageTakenBar:SetStatusBarColor(0, 0.65, 0,settingsFR.transparencyFlag)
    frenzyRegenFrame.damageTakenBar.bg:SetVertexColor(0, 0.35, 0,settingsFR.transparencyFlag)
    frenzyRegenFrame.damageTakenBar.value:SetTextColor(0, 1, 0,settingsFR.transparencyFlag)
  end  
end

function frenzyRegenFrame:updateVisibility()
  if IsPlayerSpell(idFR) then
    self:Show()  
  else
    self:Hide()
    return
  end  
  if settingsFR.hideOutOfBearFlag then
    if GetShapeshiftFormID() == 5 then
      self:Show()  
    else
      self:Hide()
      return
    end
  end  
  if settingsFR.hideOutOfCombatFlag then
    if UnitAffectingCombat("player") then
      self:Show()  
    else
      self:Hide()      
    end
  end
  if settingsFR.ignoreMouseFlag and UnitAffectingCombat("player") then
      frenzyRegenFrame:EnableMouse(false)  
  else
      frenzyRegenFrame:EnableMouse(true)       
  end
end

function frenzyRegenFrame:initFlags()
  if settingsFR.displayFlag == nil then
    settingsFR.displayFlag = 0;
  end
  if settingsFR.greyOutFlag == nil then
    settingsFR.greyOutFlag = true;
  end
  if settingsFR.movableFlag == nil then
    settingsFR.movableFlag = true;
  end
  if settingsFR.shortNumFlag == nil then
    settingsFR.shortNumFlag = false;
  end
  if settingsFR.masteryFlag == nil then
    settingsFR.masteryFlag = false;
  end
  if settingsFR.hideOutOfCombatFlag == nil then
    settingsFR.hideOutOfCombatFlag = false;
  end
  if settingsFR.hideOutOfBearFlag == nil then
    settingsFR.hideOutOfBearFlag = false;
  end
  if settingsFR.legendaryFlag == nil then
    settingsFR.legendaryFlag = false;
  end
  if settingsFR.artifactBonus == nil then
    settingsFR.artifactBonus = 0;
  end
  if settingsFR.transparencyFlag == nil then
    settingsFR.transparencyFlag = 1;
  end
  if settingsFR.ignoreMouseFlag == nil then
    settingsFR.ignoreMouseFlag = false;
  end  
end

function frenzyRegenFrame:updateArtifactBonus() 
  if IsEquippedItem(128821) then
    local powers = C_ArtifactUI.GetPowers()
    for i = 1, #powers do
      local id, _, rank = C_ArtifactUI.GetPowerInfo(powers[i])
      if id == 200400 then -- Wildflesh id
        settingsFR.artifactBonus = rank*0.05
      end
    end
end
end

frenzyRegenFrame:SetScript("OnEvent",
  function(self, event,  ...)
  if event == "ADDON_LOADED"  then
    playerGUID = UnitGUID("player")
    if settingsFR.XPos then
      frenzyRegenFrame:ClearAllPoints()
      frenzyRegenFrame:SetPoint("BOTTOMLEFT",settingsFR.XPos,settingsFR.YPos)
    end
     frenzyRegenFrame:initFlags()
    if not settingsFR.movableFlag then
    frenzyRegenFrame:SetMovable(false)
    end
    frenzyRegenFrame:updateVisibility()
  elseif self:IsShown() and event == "COMBAT_LOG_EVENT_UNFILTERED" then	
		local _, eventType, _, sourceGUID, _, _, _, destGUID = ...   
    if destGUID == playerGUID then
      eventIndex = eventIndex + 1  
      if eventType == "SWING_DAMAGE" then
        local _, _, _, _, _, _, _, _, _, _, _, amount, _, _, _, _, absorbed = ...
        if absorbed == nil then
          absorbed = 0;
        damageTableP[eventIndex] = {time(), amount+absorbed}
        end
       elseif eventType == "SPELL_DAMAGE" or eventType == "SPELL_PERIODIC_DAMAGE" or eventType == "RANGE_DAMAGE"   then
        local _, _, _, _, _, _, _, _, _, _, _, _, _, spellSchool, amount, _, _, _, _, absorbed = ...
        if absorbed == nil then
          absorbed = 0;
        end
        if spellSchool == 1 or 3 or 5 or 9 or 17 or 33 or 65 or 127 then
        damageTableP[eventIndex] = {time(), amount+absorbed}
        end
        if spellSchool ~= 1 then
        damageTableM[eventIndex] = {time(), amount+absorbed}
        end
        end
      end 
  elseif event == "ACTIVE_TALENT_GROUP_CHANGED" or event == "UPDATE_SHAPESHIFT_FORM" or event == "PLAYER_REGEN_DISABLED" or event == "PLAYER_REGEN_ENABLED" then
    frenzyRegenFrame:updateVisibility()
  elseif event == "ARTIFACT_UPDATE" then
    frenzyRegenFrame:updateArtifactBonus() 
  end
end)

frenzyRegenFrame:SetScript("OnUpdate", function(self, elapsed)
  timeElapsed = timeElapsed + elapsed
  if timeElapsed >= updateInterval then
		local t = time() - 5
		for k, v in pairs(damageTableP) do
      if v[1] <= t then
        damageTableP[k] = nil
      else
        damageTP5SP = damageTP5SP + v[2]
      end
		end
        for k, v in pairs(damageTableM) do
      if v[1] <= t then
        damageTableM[k] = nil
      else
        damageTP5SM = damageTP5SM + v[2]
      end
		end	
    self:countHealing()			
		damageTP5SP = 0
        damageTP5SM = 0
		timeElapsed = 0
  end
end)


local dropDown = CreateFrame("Frame", "FRContextMenu", frenzyRegenFrame, "UIDropDownMenuTemplate")
UIDropDownMenu_Initialize(dropDown, function(self, level, menuList)
 local info = UIDropDownMenu_CreateInfo()
 if (level or 1) == 1 then
  info.text = " Frame settings"
  info.notCheckable = true
  info.hasArrow = true
  info.value = "position_submenu"
  UIDropDownMenu_AddButton(info)
  info.text = " Transparency"
  info.value = "position_submenu2"
  UIDropDownMenu_AddButton(info)
  info.hasArrow = false  
  info.isTitle = true  
  info.icon = "Interface\\Common\\UI-TooltipDivider-Transparent"
  info.tSizeX = 0
  info.tSizeY = 8
  info.text = ""
  info.iconOnly = true
  info.iconInfo = {tFitDropDownSizeX = true}
  UIDropDownMenu_AddButton(info)
  info = UIDropDownMenu_CreateInfo()
  info.notCheckable = false
  info.hasArrow = false
  info.text = "Show total heal"   
  info.func = function() settingsFR.displayFlag = 0 end
  info.checked = function() return settingsFR.displayFlag == 0 end
  UIDropDownMenu_AddButton(info)
  info.text = "Show heal per tick"
  info.func = function() settingsFR.displayFlag = 1 end
  info.checked = function() return settingsFR.displayFlag == 1 end
  UIDropDownMenu_AddButton(info)
  info.text = "Show % of HP"  
  info.func = function() settingsFR.displayFlag = 2 end     
  info.checked = function() return settingsFR.displayFlag == 2 end
  UIDropDownMenu_AddButton(info)
 elseif level == 2 then
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu" then
    info.text = "Block position"
    info.func = function() frenzyRegenFrame:SetMovable(not frenzyRegenFrame:IsMovable()) settingsFR.movableFlag=frenzyRegenFrame:IsMovable() end
    info.checked = function() return not frenzyRegenFrame:IsMovable() end
    info.isNotRadio = true
    UIDropDownMenu_AddButton(info, level)
  end
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu" then
    info.text = "Ignore clicks in combat"
    info.func = function() settingsFR.ignoreMouseFlag = not settingsFR.ignoreMouseFlag frenzyRegenFrame:updateVisibility() end
    info.checked = function() return settingsFR.ignoreMouseFlag end    
    UIDropDownMenu_AddButton(info, level)
  end
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu" then
    info.hasArrow = false  
    info.isTitle = true
    info.notCheckable = true
    info.icon = "Interface\\Common\\UI-TooltipDivider-Transparent"
    info.tSizeX = 0
    info.tSizeY = 8
    info.text = ""
    info.iconOnly = true
    info.iconInfo = {tFitDropDownSizeX = true}
    UIDropDownMenu_AddButton(info, level)
  end
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu" then
    info = UIDropDownMenu_CreateInfo()
    info.notCheckable = false
    info.isNotRadio = true
    info.text = "Grey-out if FR's on cd"
    info.func = function() settingsFR.greyOutFlag = not settingsFR.greyOutFlag end
    info.checked = function() return settingsFR.greyOutFlag end
    UIDropDownMenu_AddButton(info, level)
  end
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu" then
    info.text = "Short numbers format"
    info.func = function() settingsFR.shortNumFlag = not settingsFR.shortNumFlag end
    info.checked = function() return settingsFR.shortNumFlag end
    UIDropDownMenu_AddButton(info, level)
  end
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu" then
    info.text = "Include mastery bonus"
    info.func = function() settingsFR.masteryFlag = not settingsFR.masteryFlag end
    info.checked = function() return settingsFR.masteryFlag end
    UIDropDownMenu_AddButton(info, level)
  end
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu" then
    info.text = "Include Skysec's Hold"
    info.func = function() settingsFR.legendaryFlag = not settingsFR.legendaryFlag end
    info.checked = function() return settingsFR.legendaryFlag end
    UIDropDownMenu_AddButton(info, level)
  end  
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu" then
    info.hasArrow = false  
    info.isTitle = true
    info.notCheckable = true
    info.icon = "Interface\\Common\\UI-TooltipDivider-Transparent"
    info.tSizeX = 0
    info.tSizeY = 8
    info.text = ""
    info.iconOnly = true
    info.iconInfo = {tFitDropDownSizeX = true}
    UIDropDownMenu_AddButton(info, level)
  end
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu" then
    info = UIDropDownMenu_CreateInfo()
    info.notCheckable = false
    info.text = "Hide when not in Bear form"
    info.func = function() settingsFR.hideOutOfBearFlag = not settingsFR.hideOutOfBearFlag frenzyRegenFrame:updateVisibility() print("To turn off this setting type '/frshow bear'") end
    info.checked = function() return settingsFR.hideOutOfBearFlag end
    info.isNotRadio = true
    UIDropDownMenu_AddButton(info, level)
  end
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu" then
    info.text = "Hide when out of combat"
    info.func = function() settingsFR.hideOutOfCombatFlag = not settingsFR.hideOutOfCombatFlag frenzyRegenFrame:updateVisibility() print("To turn off this setting type '/frshow combat'") end
    info.checked = function() return settingsFR.hideOutOfCombatFlag end
    UIDropDownMenu_AddButton(info, level)
  end
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu2" then
    info.text = "OFF"
    info.func = function() settingsFR.transparencyFlag = 1 end
    info.checked = function() return settingsFR.transparencyFlag == 1 end
    info.isNotRadio = false
    UIDropDownMenu_AddButton(info, level)
  end
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu2" then
    info.text = "Low"
    info.func = function() settingsFR.transparencyFlag = lowTransparency end
    info.checked = function() return settingsFR.transparencyFlag == lowTransparency end
    UIDropDownMenu_AddButton(info, level)
  end
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu2" then
    info.text = "Medium"
    info.func = function() settingsFR.transparencyFlag = mediumTransparency end
    info.checked = function() return settingsFR.transparencyFlag == mediumTransparency  end
    UIDropDownMenu_AddButton(info, level)
  end
  if UIDROPDOWNMENU_MENU_VALUE == "position_submenu2" then
    info.text = "High"
    info.func = function() settingsFR.transparencyFlag = highTransparency end
    info.checked = function() return settingsFR.transparencyFlag == highTransparency end
    UIDropDownMenu_AddButton(info, level)
  end
 end
end)

frenzyRegenFrame:SetScript("OnMouseDown", function(self, button)
	if button == "RightButton" then
		ToggleDropDownMenu(1, nil, dropDown, "cursor", 3, -3)
	end
end)

SLASH_FRENZYREGEN1 = "/frshow";
function SlashCmdList.FRENZYREGEN(msg, editbox)
  if msg == "bear" then
    settingsFR.hideOutOfBearFlag = not settingsFR.hideOutOfBearFlag
  elseif msg == "combat" then
    settingsFR.hideOutOfCombatFlag = not settingsFR.hideOutOfCombatFlag
  end
  frenzyRegenFrame:updateVisibility()
end

NeP.DSL:Register("health.dtps", function(target)
        
for GUID, Obj in pairs(NeP.OM:Get('Friendly')) do
    damageTaken9=damageTaken8 or 0;
	damageTaken8=damageTaken7 or 0;
	damageTaken7=damageTaken6 or 0;
	damageTaken6=damageTaken5 or 0;
	damageTaken5=damageTaken4 or 0;
	damageTaken4=damageTaken3 or 0;
	damageTaken3=damageTaken2 or 0;
	damageTaken2=damageTaken1 or 0;
	damageTaken1=damageTaken0 or 0;
	damageTaken0=Obj.currentLostHealth or 0;
    local total = 0
 local function onUpdate(self,elapsed)
    total = total + elapsed
    if total >= 0.05 then
    Obj.currentLostHealth= (UnitHealthMax(target)-(UnitHealth(target)-(UnitGetIncomingHeals(target) or 0)));
        total = 0
    end
end
local f = CreateFrame("frame")
f:SetScript("OnUpdate", onUpdate)
    

    local summLostHealth1 = damageTaken0+damageTaken1+damageTaken2+damageTaken3+damageTaken4+damageTaken5+damageTaken6+damageTaken7+damageTaken8+damageTaken9;
    local summLostHealth2 = damageTaken0+damageTaken1+damageTaken2+damageTaken3+damageTaken4
    local summLostHealth3 = damageTaken5+damageTaken6+damageTaken7+damageTaken8+damageTaken9
    local dtps = 0
	if UnitHealth(target) > 0 then
		if summLostHealth1 >= 0 then
                    if summLostHealth2 > summLostHealth3 then
                        Obj.dtps = ((summLostHealth2 - summLostHealth3)/20) or 0
                    else
                        Obj.dtps = ((summLostHealth3 - summLostHealth2)/20) or 0
                        end
                    
		end
	end

local GUID = UnitGUID(target)
local Obj = NeP.OM:Get('Friendly')[GUID]
return Obj and ((summLostHealth2 - summLostHealth3)/20)
end
 
end)

NeP.DSL:Register("health.predicteddtps", function(target)
	local GUID = UnitGUID(target)
	local Obj = NeP.OM:Get('Friendly')[GUID]
	return Obj and (UnitHealthMax(target)-(UnitHealth(target)-(UnitGetIncomingHeals('target') or 0)))
end)

NeP.DSL:Register("health.predicteddtpsd", function(target)
	local GUID = UnitGUID(target)
	local Obj = NeP.OM:Get('Friendly')[GUID]
	return Obj and (UnitHealthMax(target)-(UnitHealth(target)-(UnitGetIncomingHeals('target', 'player') or 0)))
end)

NeP.DSL:Register('rejuvraid.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*7)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('germraid.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*8)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('htraid.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*6)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('wgraid.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*5.5)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('regrowthraid.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*11)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('smraid.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*9)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('cwraid.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*8)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('rejuvparty.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*5.5)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('htparty.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*4)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('htpartytank.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*3)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('htpartyhealer.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*3.2)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('htpartydamager.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*3.2)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('wgparty.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*4.5)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('regrowthparty.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*7)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('regrowthpartytank.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*6.6)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('regrowthpartyhealer.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*6.8)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('regrowthpartydamager.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*7)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('smparty.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*6)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('cwparty.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*6)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('rejuvsolo.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*4)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('htsolo.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*3)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('wgsolo.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*5.5)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('regrowthsolo.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*5)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('smsolo.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*5.5)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('cwsolo.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetMasteryEffect()*2)^2/NeP.DSL:Get('mana')('player'))
end)


NeP.DSL:Register('chainheal.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE)*GetCombatRatingBonus(CR_CRIT_SPELL)*1.2)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('healingsurge.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE)*GetCombatRatingBonus(CR_CRIT_SPELL)*1.44)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('healingwave.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE)*GetCombatRatingBonus(CR_CRIT_SPELL)*1.44)^2/NeP.DSL:Get('mana')('player'))
end)

NeP.DSL:Register('riptide.heals', function()
    return math.sqrt((UnitStat("player", 4)*GetCombatRatingBonus(CR_VERSATILITY_DAMAGE_DONE)*GetCombatRatingBonus(CR_CRIT_SPELL)*1.6)^2/NeP.DSL:Get('mana')('player'))
end)


NeP.DSL:Register('partycheck', function()
        if IsInRaid() then
            return 3
        elseif IsInGroup() then
            return 2
        else
            return 1
        end
end)

NeP.DSL:Register('totemcheck', function()
        local haveTotem, name = GetTotemInfo(1)
            if haveTotem then
            return 2
        else
            return 1
        end
end)


NeP.DSL:Register('checkdebuff', function(debuff)
	-- If dont have a target, target is friendly or dead
  
		local setPrio = {}
		for _, Obj in pairs(NeP.OM:Get('Enemy')) do
				if not NeP.DSL:Get('debuff')(Obj.key, debuff) then
					setPrio[#setPrio+1] = {
						key = Obj.key,
						name = Obj.name,
                        guid = GUID
					}
                end
		end
		table.sort(setPrio, function(a,b) return a.guid > b.guid end)
		if setPrio[1] then
			return setPrio[1]
        elseif setPrio[2] then
            return setPrio[2]
        else
            return setPrio
		end
        
	
end)


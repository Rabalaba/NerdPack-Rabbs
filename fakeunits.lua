local LibDispellable = LibStub('LibDispellable-1.0')
-- Lowest without buff tank
NeP.FakeUnits:Add('lnbuff', function(num, args)
  local role, buff = strsplit(',', args, 2)
    local tempTable = {}
    for _, Obj in pairs(NeP.OM:GetRoster()) do
        if Obj.role == role and not NeP.DSL:Get('buff')(Obj.key, buff) then
            tempTable[#tempTable+1] = {
                key = Obj.key,
                health = Obj.health
            }
        end
    end
    table.sort( tempTable, function(a,b) return a.health < b.health end )
    return tempTable[num] and tempTable[num].key
end)

NeP.FakeUnits:Add('DispelNone', function(spell)
    local tempTable = {}
    for _, Obj in pairs(NeP.OM:GetRoster()) do
      if LibDispellable:CanDispelWith(Obj.key, NeP.Core:GetSpellID(spell)) then
        tempTable[#tempTable+1] = {
                key = Obj.key,
                health = Obj.health
            }
        end
    end
    table.sort( tempTable, function(a,b) return a.health < b.health end )
    return tempTable[num] and tempTable[num].key
end)

NeP.FakeUnits:Add('lowestpredicted', function(num, role)
    local allIncomingHeal = UnitGetIncomingHeals('target') or 0
	local tempTable = {}
	for _, Obj in pairs(NeP.OM:GetRoster()) do
		if not role or (role and Obj.role == role:upper()) then
			tempTable[#tempTable+1] = {
				key = Obj.key,
				healthPredict = (Obj.healthMax - Obj.healthRaw)
			}
		end
	end
	table.sort( tempTable, function(a,b) return a.healthPredict > b.healthPredict end )
	return tempTable[num] and tempTable[num].key
end)



NeP.FakeUnits:Add('lndebuff', function(num, debuff)
    local tempTable = {}
    for GUID, Obj in pairs(NeP.OM:Get('Enemy')) do
        if not NeP.DSL:Get('debuff')(Obj.key, debuff) then
            tempTable[#tempTable+1] = {
                key = Obj.key,
                distance = Obj.distance,
                guid = GUID
            }
        end
    end
    table.sort( tempTable, function(a,b) return a.distance < b.distance end )
    if tempTable[1] ~= 1 then
            RunMacroText('/targetenemy')
    end
end)

NeP.FakeUnits:Add('ldebuff', function(num, debuff)
    local tempTable = {}
    for _, Obj in pairs(NeP.OM:Get('Enemy')) do
        if NeP.DSL:Get('debuff')(Obj.key, debuff) then
            tempTable[#tempTable+1] = {
                key = Obj.key,
                distance = Obj.distance
            }
        end
    end
    table.sort( tempTable, function(a,b) return a.distance < b.distance end )
     return tempTable[num] and tempTable[num].key
end)

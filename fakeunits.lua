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
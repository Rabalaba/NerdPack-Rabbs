
NeP.FakeUnits:Add('lowestpredicted', function(num, role)
    local allIncomingHeal = UnitGetIncomingHeals('target') or 0
	local tempTable = {}
	for _, Obj in pairs(NeP.OM:GetRoster()) do
		if not role or (role and Obj.role == role:upper()) then
			tempTable[#tempTable+1] = {
				key = Obj.key,
				healthPredict = (Obj.healthMax - Obj.predicted_Raw)
			}
		end
	end
	table.sort( tempTable, function(a,b) return a.healthPredict > b.healthPredict end )
	return tempTable[num] and tempTable[num].key
end)



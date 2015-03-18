local skips = function(list)
	length = #list
	skipstable = {}
	for i = 1, length do
		smalltable = {}
		for j = i, length, i do
			table.insert(smalltable, list[j])
		end
		skipstable[i] = smalltable
	end
	return skipstable
end




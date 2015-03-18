local localMax = function(list)
	length = #list
	maximums = {}
	for i = 2, (length - 1) do
		if list[i] > list[(i - 1)] and list[i] > list[(i + 1)] then
			table.insert(maximums, list[i])
		end
	end
	return maximums
end


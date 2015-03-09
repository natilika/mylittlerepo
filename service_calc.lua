print('What is your name?: ');
name = io.read();
print('How much money do you have?: ');
amount = tonumber(io.read());
if amount == nil or amount < 0 then
	print('Please, write the normal numbers');
	print('How much money do you have?: ');
	amount = tonumber(io.read());
end
print('Name of the service: ');
serv = io.read();
print('How much does it cost?: ');
cost = tonumber(io.read());
if cost == nil or cost < 0 then
	print('Please, write the normal numbers');
	print('How much does it cost?: ');
	cost = tonumber(io.read());
end
if cost == 0 then
	print('You can order service '..serv..' as many times as you want')
end
if cost > 0 and amount > 0 then
	excess = amount % cost
	times = (amount - excess) / cost
	sumcost = times * cost
	print('You can order service '..serv..' at most '..times..' times. It will cost '..sumcost)
end

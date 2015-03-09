print("Quadratic equation looks like ax^2 + bx + c = 0")
print("Please, enter a ")
local a = io.read("*n")
print("Enter b ")
local b = io.read("*n")
print("Enter c ")
local c = io.read("*n")

local discriminant = function(a, b, c)
	discr = b ^ 2 - 4 * a * c
	return discr
end

local solve = function(discr, a, b)
	if discr > 0 then
		x1 = (- b + discr ^ 0.5) / (2 * a)
		x2 = (- b - discr ^ 0.5) / (2 * a)
		return x1, x2
	elseif discr == 0 then
		x = (- b) / (2 * a)
		return x
	else
		return nil
	end
end

if a == 0 then
	x = - c / b
	print("The solution is "..x)
else
	discr = discriminant(a, b, c)
	if solve(discr, a, b) == nil then
		print("This equation has no solutions")
	else
		print("The solution is", solve(discr, a, b))
	end
end


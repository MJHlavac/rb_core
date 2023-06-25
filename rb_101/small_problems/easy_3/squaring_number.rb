def squared_number(number)
	number ** 2
end

p squared_number(5)
p squared_number(-8)

def multiply(num1,num2)
	num1 * num2
end

def power_to_nth(number, power)
	multiply(number, number) ** (power - 1)
end

p power_to_nth(5, 3)
p power_to_nth(6, 2)
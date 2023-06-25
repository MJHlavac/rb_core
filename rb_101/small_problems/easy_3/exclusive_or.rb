def xor?(num1, num2)
	if num1 == true && num2 == false
		return true
	elsif num2 == true && num1 == false
		return true
	else
		false
	end
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)

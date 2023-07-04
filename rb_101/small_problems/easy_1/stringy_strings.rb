def stringy(integer)
	if integer.even?
		'10' * (integer / 2)
	else
		'10' * (integer / 2) + '1'
	end
end

puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)
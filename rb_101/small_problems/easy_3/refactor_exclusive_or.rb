# First refactor

#def xor?(num1, num2)
#	if num1 && !num2. <=== ! opposite operator returns false
#		return true
#	elsif num2 && !num1
#		return true
#	else
#		false
#	end
#end

# Second refactor
# def xor?(num1, num2)
#	return true if num1 && !num2 # If/else statement is redundant as we're utilizing forced returns
#	return true if num2 && !num1
#	false
#end

#FINAL refactor

def xor?(num1, num2)
  !!((num1 && !num2) || (num2 && !num1))
end

p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?)
p xor?(5.odd?, 4.even?)
p xor?(5.even?, 4.odd?)
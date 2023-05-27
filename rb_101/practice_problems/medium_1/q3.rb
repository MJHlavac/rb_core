

def factors(number)
  divisor = number
  factors = []

  while divisor > 0 # fixes error where number cannot be zero or negative
    factors << number / divisor if number.remainder(divisor) == 0 # a factor must be divisible by a number and have no remainder
    divisor -= 1
  end
  factors
end

p factors(10)
p factors(0)
p factors(-5)
p factors(20)

def added_factors(number)
  divisor = number
  factors = []

  while divisor > 0 # fixes error where number cannot be zero or negative
    factors << number / divisor if number.remainder(divisor) == 0 # a factor must be divisible by a number and have no remainder
    divisor -= 1 #iterates backwards from given number argument.
  end
  factors_sum = factors.inject(0, :+)
  factors_sum
end
p added_factors(20)
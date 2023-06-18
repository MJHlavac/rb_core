puts "Enter a positive integer."

input_one = gets.chomp.to_i

puts "Enter another positive integer."

input_two = gets.chomp.to_i

add_answer =  input_one + input_two
subtract_answer = input_one - input_two
multiply_answer = input_one * input_two
divide_answer = input_one.to_f / input_two.to_f
remainder_answer = input_one % input_two
power_answer = input_one ** input_two

puts "#{input_one} plus #{input_two} = #{add_answer}!"
puts "#{input_one} minus #{input_two} = #{subtract_answer}!"
puts "#{input_one} times #{input_two} = #{multiply_answer}!"
puts "#{input_one} divided by #{input_two} = #{divide_answer}!"
puts "The remainder of #{input_one} divided by #{input_two} = #{remainder_answer}!"
puts "#{input_one} to the power of #{input_two} = #{power_answer}!"


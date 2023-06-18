def prompt(msg)
	puts "=>#{msg}"
end
prompt("Let's find out if the 6th is in the first 5...")
numbers = []

prompt("What is the first number?")

numbers << first_number = gets.chomp.to_i

prompt("What is the second number?")

numbers << second_number = gets.chomp.to_i

prompt("What is the third number?")

numbers << third_number = gets.chomp.to_i

prompt("What is the fourth number?")

numbers << fourth_number = gets.chomp.to_i

prompt("What is the fifth number?")

numbers << fifth_number = gets.chomp.to_i

prompt("What is the sixth number?")

sixth_number = gets.chomp.to_i

if numbers.include?(sixth_number)
  prompt("Yes! #{sixth_number} is included in #{numbers}!")
else
  prompt("Nope! #{sixth_number} is not included in #{numbers}.")
end
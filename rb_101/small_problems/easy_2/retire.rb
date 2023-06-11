# Build a program that displays when the user will retire and how many years
# she has to work till retirement.

puts "What is your age?"

current_age = gets.chomp.to_i

puts "At what age would you like to retire?"

retirement_age = gets.chomp.to_i
current_year = Time.new.year


years_left = retirement_age - current_age
year_retire = current_year + years_left

puts "It's #{current_year}, wou will retire in #{year_retire}!"
puts "You still have #{years_left} years to go!"
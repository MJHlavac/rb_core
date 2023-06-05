# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.
# Modify the program to ask for a name. Then print the age for that person.
# Use Teddy as the name if no name is given.
def user_age(name, range)
  age = rand(range)
  if name.empty?
    "Teddy's age is #{age}!"
  else
    "#{name}'s age is #{age}!"
  end
end

puts "What's your name?"

user_name = gets.chomp

p user_age(user_name, (20..200))

#excellent.
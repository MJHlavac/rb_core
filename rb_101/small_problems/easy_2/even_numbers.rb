# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

value = 1

while value <= 99
  puts value if value % 2 == 0
  value += 1
end

1.upto(99) {|value| puts value if value.even?}

# or

puts (1..99).select(&:even?)
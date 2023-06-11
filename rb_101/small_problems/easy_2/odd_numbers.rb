# Print all odd numbers from 1 to 99, inclusive,
# to the console, with each number on a separate line.

def print_odds(range)
  range.select { |value| puts value if value.odd? }
end



print_odds(1..99)

# or

def print_modulo(range)
  range.select { |value| puts value if value % 2 == 1 }
end

print_modulo(1..99)

value = 1
while value >= 99
  puts value
  value += 2
end
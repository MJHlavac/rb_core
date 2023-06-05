# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.

CONVERT_SQM_SQFT = 10.7639

def area_meters(length, width)
  length.to_f * width.to_f
end

def area_ft(area)
  area * CONVERT_SQM_SQFT
end

puts "What's the length of the room in meters?"

length = gets.chomp

puts "What's the width of the room in meters?"

width = gets.chomp

area_in_meters = area_meters(length, width).round(2)

area_in_feet = area_ft(area_in_meters).round(2)

puts "The area of your room is #{area_in_meters}(#{area_in_feet})!"

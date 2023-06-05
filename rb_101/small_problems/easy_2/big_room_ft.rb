# Modify this program to ask for the input measurements in feet,
# and display the results in square feet, square inches, and square centimeters.

CONVERT_SQFT_SQIN = 144
CONVERT_SQFT_SQCM = 929.03

def area_ft(length, width)
  length.to_f * width.to_f
end

def area_in(area)
  area * CONVERT_SQFT_SQIN
end

def area_cm(area)
  area * CONVERT_SQFT_SQCM
end

puts "What's the length of the room in feet?"

length = gets.chomp

puts "What's the width of the room in feet?"

width = gets.chomp

area_in_feet = area_ft(length, width).round(2)

area_in_inches = area_in(area_in_feet).round(2)

area_in_cm = area_cm(area_in_feet).round(2)

puts "The area of your room is #{area_in_feet} sq feet(#{area_in_inches}
sq in , #{area_in_cm} sq cm)!"

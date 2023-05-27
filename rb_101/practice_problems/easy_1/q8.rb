# Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Create an array containing only two elements: Barney's name and Barney's number.

flintstones_arr = flintstones.assoc('Barney') # .assoc returns a two element array when given key as argument

p flintstones_arr


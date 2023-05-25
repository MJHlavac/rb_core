=begin
a method that determines the index of the 3rd occurrence of a given character in a string. 
For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x').
If the given character does not occur at least 3 times, return nil.

DEFINE a method that takes a string and a character as arguments
SET an array as a means of selecting indexes of the string
SELECT each repeating character with #find_all method from the array into a new array
IF the length of the new array is less than three, return nil. 
ELSE select the index of the third element of the new array[2]
OUTPUT the selection

=end

def third_repeat(string, character)
    new_arr = []
    arr = string.split('')
    arr.each.with_index.map do |value, index|
        if value == character
            new_arr << index
        end
    end
        if new_arr.length < 3 
            p nil
        else
            p new_arr[2]
    end
end    

third_repeat("axbxcdxex", "x")

#Good 
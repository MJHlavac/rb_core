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
    arr = (0...string.length).find_all { |i| string[i,1] == character}
    if arr.length < 3 
        p nil
    else
        p arr[2]
    end
end    

third_repeat("axbxcdxex", "x")

#Good 
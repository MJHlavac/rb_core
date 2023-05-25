=begin

Write a method that takes an array of integers, 
and returns a new array with every other element from the original array, 
starting with the first element.

-START
-DEFINE a method that takes an array as an argument
-ITERATE over the array with index starting at 1. #Each with index and #Map method selecting for odd indexes and adding them to a new array.
-p the new array.

=end

def every_other(array)
    new_array = []
    array.each.with_index(1).map do |value,i|
        if i.odd?
            new_array << value
        end 
    end
   p new_array
end 

every_other([1,3,4,5,7])

# Good


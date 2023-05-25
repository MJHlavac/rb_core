=begin 

Write a method that takes an array of strings, and returns a string that is all those strings concatenated together.

START

- define a method that takes an array as an argument
- return each item of the array concatenated as a string
- output the result

=end

def array_to_string(array)
   array.join(' ')
end

p array_to_string(["cats","mice","dogs"])

# good. 
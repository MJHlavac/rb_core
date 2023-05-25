=begin
a method that takes two arrays of numbers and returns the result of merging the arrays. 
The elements of the first array should become the elements at the even indexes of the returned array, 
while the elements of the second array should become the elements at the odd indexes. 

-START
-Define a method that takes two arrays as arguments
-SET new array using #zip to combine two arrays at corresponding indexes
-SET merged array to new_array.flatten to OUTPUT the result as one array. 
-OUTPUT merged_array
=end

def merge(array1, array2)
new_array = array1.zip(array2)
merged_array = new_array.flatten
merged_array
end

p merge([1, 2, 3], [4, 5, 6])


#good 

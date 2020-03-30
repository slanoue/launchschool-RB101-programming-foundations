# Write out pseudo-code (both casual and formal) that does the following:

# a method that returns the sum of two integers
Given two integers
Add the two integers together
# formal
START
Given two integers
Add integer_1 + integer_2
END


# a method that takes an array of strings, and returns a string that is all those strings concatenated together
Given an array of strings
Define a new, empty variable
Iterate over each string in the array
  Run a concatenate method on each string in the original array, adding it to the string in the new variable
# formal
START
Given an array of strings = string_1
SET string_2 = []
ITERATE over each element in string_1
  string_2.concat(each element in string_1)
END


# a method that takes an array of integers, and returns a new array with every other element
Given an array of integers
Create a new array
Iterate over each element in the first array
  Add the first element in the array to the new array
  Add every other element to the new array
# formal
START
Given an array of integers = array_1
SET array_2 = []
ITERATE over each element in array_1
  IF element % 2 != 0
    add it to array_2
  ELSE
    skip to the next element
END

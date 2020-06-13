# Given this code, what would be the final values of a and b? Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]
# arr = [2, [5, 8]]

arr[0] += 2
# arr is now equal to [4, [5, 8]]
# and since arr[0a] & a are both pointint to the same object, a = 4 now

arr[1][0] -= a
# arr = [4, [1, 8]]

# a = 4
# b = [1,8]

# SOLUTION: incorrent
# a = 2
# b = [3,8]

# The value of a didn't change because we are not referencing a at any point. This code arr[0] += 2 was modifying the array, arr not a. In effect we are assigning a new object at that index of the array so that instead of arr[0] containing a it now contains 4

# The value of b did change because b is an array and we are modifying that array by assigning a new value at index 0 of that array.

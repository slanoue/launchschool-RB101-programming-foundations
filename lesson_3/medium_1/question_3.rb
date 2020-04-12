# Alan wrote the following method, which was intended
# to show all of the factors of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# Alyssa noticed that this will fail if the input is 0, or a negative number,
# and asked Alan to change the loop. How can you make this work without using
# begin/end/until? Note that we're not looking to find the factors for 0 or
# negative numbers, but we just want to handle it gracefully instead of
# raising an exception or going into an infinite loop.

# First attempt:
# def factors(number)
#   if number <= 0
#     puts "Please enter a number that's greater than 0"
#   else
#     divisor = number
#     factors = []
#     loop do
#       factors << number / divisor if number % divisor == 0
#       divisor -= 1
#       break if divisor == 0
#     end
#     factors
#   end
# end

# Refactor:
def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

puts factors(0)
puts factors(-10)
puts factors(10)

# Bonus #1:
# What is the purpose of the number % divisor == 0 ?
# Only adding the factor to the array IF the number is evenly divisible

# Bonus #2:
# What is the purpose of the second-to-last line in the method (the factors before the method's end)?
# Return the array with all the factors added to it

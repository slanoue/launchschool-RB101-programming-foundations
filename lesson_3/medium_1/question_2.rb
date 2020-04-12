# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Answer:
# Need to convert (40 + 2) to a string

puts "the value of 40 + 2 is " + (40 + 2).to_s

# or use string interpolation

puts "the value of 40 + 2 is #{40 + 2}"

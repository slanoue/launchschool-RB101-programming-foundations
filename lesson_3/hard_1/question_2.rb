# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# Initial answer:
# { a: 'hi' }

# After testing the code:
# { a: "hi there"}

# Because when informal_greeting is set to = greetings[:a], informal_greeting is
# now actually referencing the object_id for the string 'hi' (as opposed to the 
# variable greetings). So when informal_greeting mutates 'hi', it actually
# changes what's being references to a new space in memory. And it changes
# greetings to also be pointing to that new space in memory.

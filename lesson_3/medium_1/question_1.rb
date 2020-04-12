# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

# For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

# Attempt 1:
# string = "The Flintstones Rock!"
# i = 1
#
# while i < 11
#   puts string
#   string.prepend('  ')
#   i += 1
# end

# Attempt 2:
# string = "The Flintstones Rock!"
# i = 0
#
# loop do
#   puts string
#   string.prepend('  ')
#   i += 1
#   break if i == 10
# end

# Refactoring to 1 line:
10.times { |counter| puts ('  ' * counter) + 'The Flintstones Rock!' }

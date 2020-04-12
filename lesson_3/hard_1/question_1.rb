# coming soon
# What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = "hello world"
end

greeting

# Initial answer:
# error, no variable exists named greeting

# Answer after testing:
# Returns nil, probably because the variable greeting was initialized in the block
# (even though the block never ran). If the variable hadn't been initiatilzied
# in the block, this code would have thrown an error when greeting was called

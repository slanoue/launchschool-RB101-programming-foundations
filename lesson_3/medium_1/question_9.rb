# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

puts bar(foo)

# "no"
# foo will always return "yes". So when bar tries to compare "yes" == "no"
# the result will always be false, and so it returns "no"

# In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if "Spot" is present.

ages.include?("Spot")
ages.key?("Spot")
ages.member?("Spot")

# after doing some research into the difference between
# include? and member? it looks like they are aliases
# of each other and have the exact same source code

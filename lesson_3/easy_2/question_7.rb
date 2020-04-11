# In the previous practice problem we added Dino to our array like this:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy)

# 1st way
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << ["Dino", "Hoppy"]
flintstones.flatten!
p flintstones

# 2nd way
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino", "Hoppy")
p flintstones

# 3rd way
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino").push("Hoppy")
p flintstones

# 4th way
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
new_additions = %w(Dino Hoppy)
flintstones.concat(new_additions)
p flintstones

# 5th way
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(%w(Dino Hoppy))
p flintstones

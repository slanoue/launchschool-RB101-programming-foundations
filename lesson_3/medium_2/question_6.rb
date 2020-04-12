# How could the unnecessary duplication in this method be removed?

# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

def color_valid(color)
  color == "blue" || color == "green"
end

puts "Black: #{color_valid('black')}"
puts "Blue: #{color_valid('blue')}"
puts "Yellow: #{color_valid('yellow')}"
puts "Red: #{color_valid('red')}"
puts "Green: #{color_valid('green')}"

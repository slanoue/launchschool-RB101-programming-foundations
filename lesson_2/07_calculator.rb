# Build a command line calculator program that does the following:
# * asks for two numbers
# * asks for the type of operation to perform: add, subtract, multiply or divide
# * displays the result

puts "Welcome to the calculator! Please enter your first number: "
number_1 = gets.chomp.to_i

puts "Got it! Now, please enter your second number: "
number_2 = gets.chomp.to_i

puts "Next, do you want to add, subtract, multiply, or divide them? "
operator = gets.chomp.to_s
operator.downcase!

if operator == "add"
  add_numbers = number_1 + number_2
  puts "Great, " + number_1.to_s + " + " + number_2.to_s + " = " + add_numbers.to_s
elsif operator == "subtract"
  subtract_numbers = number_1 - number_2
  puts "Great, " + number_1.to_s + " - " + number_2.to_s + " = " + subtract_numbers.to_s
elsif operator == "multiply"
  multiply_numbers = number_1 * number_2
  puts "Great, " + number_1.to_s + " * " + number_2.to_s + " = " + multiply_numbers.to_s
elsif operator == "divide"
  divide_numbers = number_1.to_f / number_2.to_f
  puts "Great, " + number_1.to_s + " / " + number_2.to_s + " = " + divide_numbers.to_s
end

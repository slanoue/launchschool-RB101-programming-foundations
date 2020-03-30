# Refactoring the calculator from Lesson 7

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to the calculator! Enter your name: ")
name = ''
loop do
  name = gets.chomp.to_s

  if name.empty?
    prompt("Make sure to use a valid name")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number_1 = ''
  loop do
    prompt("Please enter your first number: ")
    number_1 = gets.chomp.to_i

    if valid_number?(number_1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number.")
    end
  end

  number_2 = ''
  loop do
    prompt("Got it! Now, please enter your second number: ")
    number_2 = gets.chomp.to_i

    if valid_number?(number_2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Please choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
    when "1"
      number_1 + number_2
    when "2"
      number_1 - number_2
    when "3"
      number_1 * number_2
    when "4"
      number_1.to_f / number_2.to_f
  end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp.to_s
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator!")

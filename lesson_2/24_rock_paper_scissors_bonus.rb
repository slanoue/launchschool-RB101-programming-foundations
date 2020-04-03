# RULES
# - ROCK beats SCISSORS, LIZARD
# - PAPER beats ROCK, SPOCK
# - SCISSORS beat PAPER, LIZARD
# - SPOCK beats SCISSORS, ROCK
# - LIZARD beats SPOCK, PAPER


VALID_CHOICES = %w(rock paper scissors spock lizard)
# VALID_CHOICES_FIRST_CHAR = VALID_CHOICES.map { |str| str[0] }

def prompt(message)
   puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
  (first == 'paper' && (second == 'rock' || second == 'spock')) ||
  (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
  (first == 'spock' && (second == 'scissors' || second == 'rock')) ||
  (first == 'lizard' && (second == 'spock' || second == 'paper'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You win!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

# find the first letter of each item in the array
# print the first letter with ) in front of each option
# print the firs tletter of the first option at the start of the prompt
# make it so that if they just type that letter, it equates to typing out the entire word

# Iterate through each item in VALID_CHOICES
# print the first letter of each item
# print the full string for each item

loop do
  user_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    user_choice = gets.chomp

    case
    when VALID_CHOICES.include?(user_choice)
      break
    else
      prompt("That's not a valid choice.")
    end

    # case testing
    # when user_choice == 'r'
    #   user_choice = 'rock'
    # when user_choice == 'p'
    #   user_choice = 'paper'
    # when user_choice == 's'
    #   user_choice = 'scissors'
    # when user_choice == 'sp'
    #   user_choice = 'spock'
    # when user_choice == 'l'
    #   user_choice = 'lizard'
    # else
    #   "Error: That's not a valid choice"
    # end

    # if VALID_CHOICES.include?(user_choice)
    #   break
    # else
    #   prompt("That's not a valid choice.")
    # end
  end


  # IDEA: Right now we use the full string (e.g. rock) to determine winners and losers. That means if a user inputs the first letter of that word, we need a way of setting that answer equal to the string (e.g. rock). What if when a user inputs a letter, we use a method to set the letter equal to the full string e.g. rock, paper, scissors.

  computer_choice = VALID_CHOICES.sample
  prompt("You chose #{user_choice}, the computer chose #{computer_choice}")

  display_results(user_choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt("Thank you for playing! Goodbye")

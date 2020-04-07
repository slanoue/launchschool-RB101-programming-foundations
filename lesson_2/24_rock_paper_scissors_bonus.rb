# VALID_CHOICES = {
#   'r' => 'rock',
#   'p' => 'paper',
#   'sc' => 'scissors',
#   'sp' => 'spock',
#   'l' => 'lizard'
# }

WINNING_CONDITIONS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'spock' => ['scissors', 'rock'],
  'lizard' => ['spock', 'paper']
}

# def prompt(message)
#    puts "=> #{message}"
# end

# def display_instructions
#   puts ""
#   prompt("Welcome to #{VALID_CHOICES.values.join(', ')}!")
#   prompt("Here's how it works:")
#   puts ""
#
#   WINNING_CONDITIONS.each { |k, v| prompt("👉 #{k.capitalize} beats #{v[0]} and #{v[1]}") }
#
#   puts ""
#   prompt("Each time you win, you get 1 point.")
#   prompt("First player to 5 points becomes the Grand Winner!")
#   prompt("Now, let's get started...")
#   puts ""
# end

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

score = {
  "player" => 0,
  "computer" => 0
}

def keep_score(score, player, computer)
  if win?(player, computer)
    score["player"] += 1
  elsif win?(computer, player)
    score["computer"] += 1
  end

  prompt("<Score>")
  score.each { |k, v| prompt("#{key}: #{value}") }
end

display_instructions()

loop do
  user_choice = ''

  loop do
    # prompt("Choose one:")
    # puts ""
    # VALID_CHOICES.each { |k, v| prompt("👉 #{v.capitalize} (or #{k})") }
    user_choice = gets.chomp.downcase

    if VALID_CHOICES.values.include?(user_choice)
      break
    elsif VALID_CHOICES.keys.include?(user_choice)
      case
        when user_choice == 'r'
          user_choice = 'rock'
        when user_choice == 'p'
          user_choice = 'paper'
        when user_choice == 'sc'
          user_choice = 'scissors'
        when user_choice == 'sp'
          user_choice = 'spock'
        when user_choice == 'l'
          user_choice = 'lizard'
      end
      break
    else
      puts ""
      prompt("🚫 That's not a valid choice. Please try again")
    end

  end

  computer_choice = VALID_CHOICES.values.sample

  display_results(user_choice, computer_choice)

  keep_score(score, player, computer)









  # - Tally the score
  # - Display the winner and the new score

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt("Thank you for playing! Goodbye")

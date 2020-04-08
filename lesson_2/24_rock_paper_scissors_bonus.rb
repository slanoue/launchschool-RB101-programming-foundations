VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'sp' => 'spock',
  'l' => 'lizard'
}

WIN_CONDITIONS = {
  "scissors" => ["paper", "lizard"],
  "paper" => ["rock", "spock"],
  "rock" => ["lizard", "scissors"],
  "lizard" => ["spock", "paper"],
  "spock" => ["scissors", "rock"]
}

def prompt(message)
   puts "=> #{message}"
end

# TODO: Refactor this to use the WIN_CONDITIONS hash instead of manually doing all of these calculations
def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
  (first == 'paper' && (second == 'rock' || second == 'spock')) ||
  (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
  (first == 'spock' && (second == 'scissors' || second == 'rock')) ||
  (first == 'lizard' && (second == 'spock' || second == 'paper'))
end

# def display_results(player, computer)
#   if win?(player, computer)
#     prompt("You win!")
#   elsif win?(computer, player)
#     prompt("Computer won!")
#   else
#     prompt("It's a tie!")
#   end
# end

puts ""
prompt("Welcome to #{VALID_CHOICES.values.join(', ')}!")
prompt("Here's how it works:")
puts ""

# puts "Rock bets X beats Y beat blah blah blah"
WIN_CONDITIONS.each { |k, v| prompt("👉 #{k.capitalize} beats #{v[0]} and #{v[1]}") }

puts ""
prompt("Each time you win, you get 1 point.")
prompt("First player to 5 points becomes the Grand Winner!")
prompt("Now, let's get started...")

loop do
  score = {
    'player' => 0,
    'computer' => 0
  }

  loop do
    player_choice = ''

    loop do
      # prompt("Choose one: #{VALID_CHOICES.values.join(', ')}")
      puts ""
      prompt("Choose one:")
      puts ""
      VALID_CHOICES.each { |k, v| prompt("👉 #{v.capitalize} (or #{k})") }

      player_choice = gets.chomp.downcase

      if VALID_CHOICES.keys.include?(player_choice)
        player_choice = VALID_CHOICES[player_choice]
        break
      elsif VALID_CHOICES.values.include?(player_choice)
        break
      else
        puts ""
        prompt("🚫 That's not a valid choice. Please try again")
      end
    end

    computer_choice = VALID_CHOICES.values.sample

    prompt("You chose #{player_choice}, the computer chose #{computer_choice}")

    if win?(player_choice, computer_choice)
      prompt("You win!")
    elsif win?(computer_choice, player_choice)
      prompt("Computer wins!")
    else
      prompt("It's a tie!")
    end

    if win?(player_choice, computer_choice)
      score['player'] += 1
    elsif win?(computer_choice, player_choice)
      score['computer'] += 1
    end

    puts ""
    prompt("<Score>")
    score.each { |k, v| prompt("#{k. capitalize}: #{v}") }


    break if score.value?(5)

    # display_results(player_choice, computer_choice)

  end

  if score.key(5) == 'player'
    prompt("You won 5 times! Congratulations! You're the Grand Winnder!!!")
  elsif score.key(5) == 'computer'
    prompt("Computer won 5 times. Game over.")
  end

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")

end

prompt("Thank you for playing! Goodbye")

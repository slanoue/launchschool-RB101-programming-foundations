VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'sp' => 'spock',
  'l' => 'lizard'
}

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

score = {
  'player' => 0,
  'computer' => 0
}

loop do
  player_choice = ''

  loop do
    prompt("Choose one: #{VALID_CHOICES.values.join(', ')}")

    player_choice = gets.chomp.downcase

    if VALID_CHOICES.keys.include?(player_choice)
      player_choice = VALID_CHOICES[player_choice]
      break
    elsif VALID_CHOICES.values.include?(player_choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.values.sample

  prompt("You chose #{player_choice}, the computer chose #{computer_choice}")

  if win?(player_choice, computer_choice)
    puts "you win!"
    score['player'] += 1
    puts score['player']
  elsif win?(computer_choice, player_choice)
    puts "computer wins!"
    score['computer'] += 1
    puts score['computer']
  else
    puts "it's a tie!"
  end

  break if score.value?(5)

  # display_results(player_choice, computer_choice)

  # prompt("<Scores>")
  # score.each { |k, v| prompt("#{k.capitalize}: #{v}") }

  # prompt("Do you want to play again?")
  # answer = gets.chomp
  # break unless answer.downcase.start_with?("y")
end

prompt("Thank you for playing! Goodbye")

VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'sp' => 'spock',
  'l' => 'lizard'
}

WIN_CONDITIONS = {
  'scissors' => %w[paper lizard],
  'paper' => %w[rock spock],
  'rock' => %w[lizard scissors],
  'lizard' => %w[spock paper],
  'spock' => %w[scissors rock]
}

def prompt(message)
  puts "=> #{message}"
end

def display_game_rules
  puts ''
  prompt("Welcome to #{VALID_CHOICES.values.join(', ')}!")
  prompt('Here\'s how it works:')
  puts ''

  WIN_CONDITIONS.each do |k, v|
    prompt("✅ #{k.capitalize} beats #{v[0]} and #{v[1]}")
  end

  puts ''
  prompt('Each time you win, you get 1 point.')
  prompt('First player to 5 points becomes the Grand Winner!')
  prompt('Now, let\'s get started...')
end

def request_player_choice
  puts ''
  prompt('Choose one:')
  puts ''
  VALID_CHOICES.each { |k, v| prompt("👉 #{v.capitalize} (or #{k})") }
end

def validate_player_choice
  loop do
    request_player_choice

    choice = gets.chomp.downcase

    if VALID_CHOICES.keys.include?(choice)
      choice = VALID_CHOICES[choice]
      return choice
    elsif VALID_CHOICES.values.include?(choice)
      return choice
    else
      puts ''
      prompt('🚫 That\'s not a valid choice. Please try again')
    end
  end
end

def display_winner(player, computer)
  prompt("You chose #{player}, the computer chose #{computer}")

  if win?(player, computer)
    prompt('You win!')
  elsif win?(computer, player)
    prompt('Computer wins!')
  else
    prompt('It\'s a tie!')
  end
end

def calculate_score(player, computer, score)
  if win?(player, computer)
    score['player'] += 1
  elsif win?(computer, player)
    score['computer'] += 1
  end
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
    (first == 'paper' && (second == 'rock' || second == 'spock')) ||
    (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
    (first == 'spock' && (second == 'scissors' || second == 'rock')) ||
    (first == 'lizard' && (second == 'spock' || second == 'paper'))
end

def display_score(current_score)
  puts ''
  prompt('<Score>')
  current_score.each { |k, v| prompt("#{k. capitalize}: #{v}") }
end

def announce_grand_winner(current_score)
  if current_score.key(5) == 'player'
    puts ''
    prompt('You won 5 times! Congratulations! You\'re the Grand Winner!!!')
  elsif current_score.key(5) == 'computer'
    puts ''
    prompt('Computer won 5 times. Game over.')
  end
end

def want_to_play_again?
  prompt('Do you want to play again? (y/n)')
  gets.chomp.downcase
end

def goodbye
  prompt('Thank you for playing! Goodbye')
end

# ----------- main program -----------

display_game_rules

loop do
  score = {
    'player' => 0,
    'computer' => 0
  }

  loop do
    player_choice = validate_player_choice

    computer_choice = VALID_CHOICES.values.sample

    display_winner(player_choice, computer_choice)

    calculate_score(player_choice, computer_choice, score)

    display_score(score)

    break if score.value?(5)
  end

  announce_grand_winner(score)

  play_again = want_to_play_again?

  break unless play_again.downcase.start_with?('y')
end

goodbye

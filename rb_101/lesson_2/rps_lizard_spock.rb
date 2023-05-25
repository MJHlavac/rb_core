VALID_CHOICES = %w(rock paper scissors spock lizard)

WINNING_CONDITIONS = {
  rock: ['scissors', 'lizard'],
  paper: ['rock', 'spock'],
  scissors: ['lizard', 'paper'],
  lizard: ['spock', 'paper'],
  spock: ['scissors', 'rock']
}

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_results(player, cpu)
  if win?(player, cpu)
    prompt("You win!")
  elsif win?(cpu, player)
    prompt("You lose!")
  else
    prompt("It's a tie!")
  end
end

loop do
  user_choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    user_choice = Kernel.gets().chomp()
    if VALID_CHOICES.include?(user_choice.downcase)
      break
    else
      prompt("That's not a valid choice! Try again.")
    end
  end

  cpu_choice = VALID_CHOICES.sample()

  prompt("You chose #{user_choice} and the cpu chose #{cpu_choice}.")

  display_results(user_choice, cpu_choice)

  prompt("Play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

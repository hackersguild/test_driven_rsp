choices = ['r', 'p', 's']
computer_choice = choices.sample
winning_array = ['pr', 'rs', 'sp']
game = computer_choice + user_choice

puts 'Enter your guess letter: '
user_choice = gets.chomp

if user_choice == computer_choice
	puts 'Draw'
elsif winning_array.include? game
	puts 'Computer wins'
else
	puts 'User wins'
end	

puts "The game was : CPU #{computer_choice} vs HUM #{user_choice}"

require "minitest/autorun"

class RspTest < MiniTest::Unit::TestCase
  def test_random_computer_choice
    assert ['r', 's', 'p'].include?(cpu_choice)     
  end
  def test_user_choice
  	#assert ['r', 's', 'p'].include?(user_choice)     
  end

  def test_concatenation
  	assert_equal game.length, 2
  end

  def test_if_game_in_winning_array
  	assert_equal "You win!", is_winning('rs')
  	assert_equal "You Lose!", is_winning('rp')
  	assert_equal "Draw", is_winning('rr')
  end
end

def cpu_choice
  moves = ['r']
  moves.sample
end

def user_choice
  'p'
end

def game
	user_choice + cpu_choice
end

def is_winning(game)
	winning_array = ['pr', 'rs', 'sp']
	if game[0] == game[1]
		'Draw'
	elsif winning_array.include? game
		'You win!'
	else 
		'You Lose!'
	end
end
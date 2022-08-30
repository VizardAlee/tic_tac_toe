# frozen_string_literal: true

# trying to make sense out of this

# thanks TOP :')

# below is the winning combination for the game
WIN_COMBO = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

# the palyer class encompassing everything

@board = ['', '', '', '', '', '', '', '', '']
# @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# the layout
def board_layout
  puts "  #{@board[0]}  |  #{@board[1]}  |  #{@board[2]}  "
  puts '---------------'
  puts "  #{@board[3]}  |  #{@board[4]}  |  #{@board[5]}  "
  puts '---------------'
  puts "  #{@board[6]}  |  #{@board[7]}  |  #{@board[8]}  "
end

# making 1 to 1 input instead of starting the board count from zero
def better_input
  gets.chomp.to_i - 1
end
=begin
# payer1 method
def player1(player1 = 'X')
  board_layout
  until position_taken?

    puts "choose a spot Mr. #{player1}"
    @board[better_input] = player1
  end
  puts 'not so fast'
  
 # unless position_taken?
end

# player2 method
def player2(player2 = 'O')
  board_layout
  until position_taken?
    puts "choose a spot Mr. #{player2}"
    @board[better_input] = player2
  end
  puts 'not so fast'
 # return player2 unless position_taken? 
end

# if board is full
def full?
  @board.all? { |element| element == 'X'  || element == 'O'}
end

# find free positions
def position_taken?
  if @board[player1].include?('X') || @board[player1].include?('O') || @board[player2].incude?('X') || @board[player2].include?('O')
    puts 'Position taken!'
  end
end

# puts position_taken?

def game
  loop do
    # until position_taken?
    if player1
      player2
    elsif player2
      player1
    end
    # end
  end
end

p game
=end

def taken?
=begin
  if @board[index] == '' || @board[index] == ' ' || @board[index] == nil
    return false
  else
    return true
  end
end
=end
  @board.each do |index|
    if index == '' || index == ' ' || index == nil
      return false
    else
      return true
    end
  end
end

def full?
  if @board.include?('') || @board.include?(' ') || @board.include?(nil)
    return false
  else
    return true
  end
end

def player1
  @board[better_input] = 'X'
  board_layout
end

def player2
  @board[better_input] = 'O'
  board_layout
end

def player
  loop do
    if full?
      puts 'No more move!'
    end
    if player1
      player2
    elsif player2
      player1
    end
  end
end

def play
  board_layout
  puts 'Choose your spot'
  player
end

puts player

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

# find free positions

def taken?(index)
  if @board[index] == '' || @board[index] == ' ' || @board[index] == nil
    return false
  else
    return true
  end
end


# check if the board is full
def full?
  if @board.include?('') || @board.include?(' ') || @board.include?(nil)
    return false
  else
    return true
  end
end

# player1 move
def player1
  puts 'Check if spot is taken'
  if taken?(better_input)
    puts 'Spot taken'
  else
    puts 'spot not taken, make a move'
    @board[better_input] = 'X'
    board_layout
  end
end

# player2 move
def player2
  puts 'Check if spot is taken'
  if taken?(better_input)
    puts 'Spot taken'
  else
    puts 'spot not taken, make a move'
    @board[better_input] = 'O'
    board_layout
  end
end

def player
  loop do
    if full?
      puts 'No more move!'
      break
    end
    if player1
      player2
    elsif player2
      player1
    end
  end
end

puts player

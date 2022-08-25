# frozen_string_literal: true

# trying to make sense out of this

# thanks TOP :')



# below is the winning combination for the game
WIN_COMBO = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

# the palyer class encompassing everything

@board = ['', '', '', '', '', '', '', '', '']

# the layout
def board_layout
  puts "  #{@board[0]}  |  #{@board[1]}  |  #{@board[2]}  "
  puts '---------------'
  puts "  #{@board[3]}  |  #{@board[4]}  |  #{@board[5]}  "
  puts '---------------'
  puts "  #{@board[6]}  |  #{@board[7]}  |  #{@board[8]}  "
end

# payer1 method
def player1
  puts 'choose a spot'
  position = gets.chomp.to_i
  @board[position] = 'X'
  board_layout
end

# player2 method
def player2
  puts 'choose a spot'
  position = gets.chomp.to_i
  @board[position] = 'O'
  board_layout
end

# game method
def game
  if player1
    player2
  elsif player2
    player1
  end
end

p game

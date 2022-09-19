# frozen_string_literal: true

# create a board
# create a player

# board and it's layout
board = ['', '', '', '', '', '', '', '', '']

def board_layout(board)
  puts "  #{board[0]}  |  #{board[1]}  |  #{board[2]}  "
  puts '- - -+- - -+- - -'
  puts "  #{board[3]}  |  #{board[4]}  |  #{board[5]}  "
  puts '- - -+- - -+- - -'
  puts "  #{board[6]}  |  #{board[7]}  |  #{board[8]}  "
end

# player class
class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

def player_X
  Player.new('X')
end

def player_O
  Player.new('O')
end

=begin
def choose_player
  puts 'player X or O?:'
  player = ''
  valid_char = false

  while valid_char == false
    player = gets.chomp.upcase

    if player == 'X'
      player1 = Player.new('X')
      puts "Player one marker #{player1.name} confirmed"
      player2 = Player.new('O')
      puts "Player two marker #{player2.name} confirmed"
      puts "Let's begin"
      valid_char = true
    elsif player == 'O'
      player1 = Player.new('O')
      puts "Player one marker #{player1.name} confirmed"
      player2 = Player.new('X')
      puts "Player two marker #{player2.name} confirmed"
      puts "Let's begin"
      valid_char = true
    else
      puts "#{player} is not a valid input"
      puts 'Gotta be X or O'
      valid_char = false
    end
  end
end
=end

# play game
player1 = 'X'
player2 = 'O'

def turn(player1, player2)
  if player1
    player2
  elsif player2
    player1
  end
end

def play(board, player1, player2)
  moves = 9

  while moves.positive?
    board_layout(board)
    board[gets.chomp.to_i] = turn(player1, player2)
    board_layout(board)
    moves -= 1
  end
end

play(board, player1, player2)
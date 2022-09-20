# frozen_string_literal: true

# create a board
# create a player

# board and it's layout
board = ['', '', '', '', '', '', '', '', '']

# using this to just visualize the positions
WIN_COMBO = [
  [[board[0]], [board[1]], [board[2]]],
  [[board[3]], [board[4]], [board[5]]],
  [[board[6]], [board[7]], [board[8]]],
  [[board[0]], [board[4]], [board[8]]],
  [[board[2]], [board[4]], [board[6]]],
  [[board[0]], [board[3]], [board[6]]],
  [[board[1]], [board[4]], [board[7]]],
  [[board[2]], [board[5]], [board[8]]]
]

# determining all winning positions for X
def x_win?(board)
  if board[0..2].all?('X') | board[3..5].all?('X') || board[6..8].all?('X')
    true
  elsif board[0] == 'X' && board[4] == 'X' && board[8] == 'X'
    true
  elsif board[2] == 'X' && board[4] == 'X' && board[6] == 'X'
    true
  elsif board[0] == 'X' && board[3] == 'X' && board[6] == 'X'
    true
  elsif board[1] == 'X' && board[4] == 'X' && board[7] == 'X'
    true
  elsif board[2] == 'X' && board[5] == 'X' && board[8] == 'X'
    true
  else
    false
  end
end

# determining all winning positions for O
def o_win?(board)
  if board[0..2].all?('O') | board[3..5].all?('O') || board[6..8].all?('O')
    true
  elsif board[0] == 'O' && board[4] == 'O' && board[8] == 'O'
    true
  elsif board[2] == 'O' && board[4] == 'O' && board[6] == 'O'
    true
  elsif board[0] == 'O' && board[3] == 'O' && board[6] == 'O'
    true
  elsif board[1] == 'O' && board[4] == 'O' && board[7] == 'O'
    true
  elsif board[2] == 'O' && board[5] == 'O' && board[8] == 'O'
    true
  else
    false
  end
end

# combining both here to avoid a 'too clustered' method
def win?(board)
  if x_win?(board) == true
    'X marker wins!'
  elsif o_win?(board) == true
    'O marker wins!'
  else
    'no winner yet'
  end
end

# win?(board)

# displays board layout
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
=begin
def play(board, player1, player2)
  moves = 9

  while moves.positive?
    board_layout(board)
    board[gets.chomp.to_i] = turn(player1, player2)
    board_layout(board)
    moves -= 1
  end
end
=end

# play(board, player1, player2)

def player1(board)
  player1 = 'X'
  board[gets.chomp.to_i] = player1
  board_layout(board)
  # x_win?(board)
end

def player2(board)
  player2 = 'O'
  board[gets.chomp.to_i] = player2
  board_layout(board)
  # o_win?(board)
end

def move(board)
  until win?(board) == 'X marker wins!' || win?(board) == 'O marker wins!' || board.include?('') == false
    if player1(board)
      player2(board)
    elsif player2(board)
      player1(board)
    end
    win?(board)
  end
end
move(board)
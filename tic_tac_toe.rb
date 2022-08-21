# frozen_string_literal: true

require 'pry-byebug'
=begin
# create board
  board = ['', '', '', '', '', '', '', '', '']

  def display_board(board)
    puts "  #{board[0]} | #{board[1]} | #{board[2]}"
    puts '----------'
    puts "  #{board[3]} | #{board[4]} | #{board[5]}"
    puts '----------'
    puts "  #{board[6]} | #{board[7]} | #{board[8]}"
  =end
# testing the play method
=begin
def play(board)
  puts 'Make  a move!'
  move = gets.chomp.to_i
  board[move] = 'X'
  display_board(board)
end
=end

# modifying the input method to correspond with the human  number system
def user_input(input)
  input.to_i - 1
end
=begin
# creating player class
class Player
  @@board = []

  def initialize(name, marker)
    @name = name
    @marker = marker
  end
  # board = ['', '', '', '', '', '', '', '', '']

  def display_board(board)
    puts "  #{board[0]} | #{board[1]} | #{board[2]}"
    puts '----------'
    puts "  #{board[3]} | #{board[4]} | #{board[5]}"
    puts '----------'
    puts "  #{board[6]} | #{board[7]} | #{board[8]}"
  end

  def play
    puts 'Make  a move!'
    move = gets.chomp.to_i
    @@board[move] = @marker
    display_board(@board)
  end
end

p aliyu = Player.new('Aliyu', 'X')
aliyu.play
=end
PLAYER_ONE = 'X'
PLAYER_TWO = 'O'

def initialize
  @count = 9
  @player = PLAYER_ONE
  @board = ['', '', '', '', '', '', '', '', '']
end

def display_board
  puts "  #{@board[0]} | #{@board[1]} | #{@board[2]}"
  puts '----------'
  puts "  #{@board[3]} | #{@board[4]} | #{@board[5]}"
  puts '----------'
  puts "  #{@board[6]} | #{@board[7]} | #{@board[8]}"
end

# verifying if a position is taken
def position_taken?(move)
  if @board[move] == ' ' || @board[move] == '' || @board[move] == nil
    true
  else
    false
  end
end

# creating a move validator
def valid_move?(move)
  return unless move.between?(1, 9) && !position_taken?(@board, move)
end

# play move
def play_move(move)
  @board[move] = @player
end

# turn counter
def turn_count
  counter = 0
  @board.include?('X', 'O')
  counter += 1
  counter
end

# something on the play
def current_player
  turn_count(@board).even?('X', 'O')
end

def play
  puts 'Make  a move! Put a number 1-9'
  move = user_input(gets.chomp.to_i)
  if valid_move?(@board, move)
    play_move(@board, move, current_player(@board))
    play(@board)
  end
  display_board
end

# **************************** #
def retrieve_inputs
  begin
    puts "#{@player}Make a move between 1 - 9"
    input = user_input(gets.chomp.to_i)
    return false if input != (1..9)

    unless valid_move?(@board, move)
      puts 'Taken. Please try again'
    end
  end
  display_board
end

retrieve_inputs

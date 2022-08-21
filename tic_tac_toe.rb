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
board = ['', '', '', '', '', '', '', '', '']

def display_board(board)
  puts "  #{board[0]} | #{board[1]} | #{board[2]}"
  puts '----------'
  puts "  #{board[3]} | #{board[4]} | #{board[5]}"
  puts '----------'
  puts "  #{board[6]} | #{board[7]} | #{board[8]}"
end

# verifying if a position is taken
def position_taken?(board, move)
  if board[move] == ' ' || board[move] == '' || board[move] == nil
    true
  else
    false
end

# creating a move validator
def valid_move?(board, move)
  return unless move.between?(1, 9) && !position_taken?(board, move)
end

def play(board, marker = 'X')
  puts 'Make  a move! Put a number 1-9'
  move = user_input(gets.chomp.to_i)
  board[move] = marker
  display_board(board)
end

# frozen_string_literal: true

require 'pry-byebug'

# create board

board = ['', '', '', '', '', '', '', '', '']

def display_board(board)
  puts "  #{board[0]} | #{board[1]} | #{board[2]}"
  puts '----------'
  puts "  #{board[3]} | #{board[4]} | #{board[5]}"
  puts '----------'
  puts "  #{board[6]} | #{board[7]} | #{board[8]}"
end

# testing the play method
def play(board)
  puts 'Make  a move!'
  move = gets.chomp.to_i
  board[move] = 'X'
  display_board(board)
end

# modifying the input method to correspond with the human  number system
def user_input(input)
  input.to_i - 1
end

# creating player class
class Player
  def initialize(name, marker)
    @name = name
    @marker = marker
  end
end
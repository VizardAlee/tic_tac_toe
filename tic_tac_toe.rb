# frozen_string_literal: true

require 'pry-byebug'

# creating board
board = ['', '', '', '', '', '', '', '', '']
index = gets.chomp.to_i

def board_layout(board)
  puts "  #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts "  #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts "  #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, player = 'X')
  puts 'Choose your spot!'
  board[index] = player
  board_layout(board)
end

move(board, index)

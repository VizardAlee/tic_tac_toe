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

def play(board)
  puts 'Make  a move!'
  move = gets.chomp.to_i
  board[move] = 'X'
  display_board(board)
end
play(board)

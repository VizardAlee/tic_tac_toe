# frozen_string_literal: false

require_relative 'player'

# create a board class
class Board
  attr_accessor :board

  def initialize
    @board = ['', '', '', '', '', '', '', '', '']
  end

  def layout
    puts "  #{@board[0]}  |  #{@board[1]}  |  #{@board[2]}  "
    puts '- --+- --+-- -'
    puts "  #{@board[3]}  |  #{@board[4]}  |  #{@board[5]}  "
    puts '- --+- --+-- -'
    puts "  #{@board[6]}  |  #{@board[7]}  |  #{@board[8]}  "
  end

  def position_vacant?(spot)
    @board[spot].empty?
  end

  def move_valid?(spot)
    @board[spot].empty? || spot >= 0 && spot <= 8 ? true : false
  end
end

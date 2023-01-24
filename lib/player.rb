# frozen_string_literal: false

require_relative 'board'
require_relative 'play_module'

# player class
class Player
  include Play
  attr_accessor :name1, :name2, :player1, :player2
  attr_reader :marker

  def initialize; end

  def assign_first_name(name = [])
    puts 'Your name player 1'
    name << gets.chomp
    @name1 = name.join
    @player1 = 'X'
  end

  def assign_second_name(name = [])
    puts 'Your name player 2'
    name << gets.chomp
    @name2 = name.join
    @player2 = 'O'
  end

  def show_names
    puts "#{@name1} VS #{@name2}!"
    puts "#{@name1}'s marker is #{@player1} and #{@name2}'s marker is #{@player2}"
    puts "Let's Goooo!!!"
  end

  def player1_move(board, move = [])
    move << place
    move = move.join.to_i - 1
    move_valid?(move, board) ? board[move] = @player1 : false
  end

  def player2_move(board, move = [])
    move << place
    move = move.join.to_i - 1
    move_valid?(move, board) ? board[move] = @player2 : false
  end

  def place
    gets.chomp.to_i
  end
end

# frozen_string_literal: false

require_relative 'board'
require_relative 'player'
require_relative 'play_module'

# tic tac toe game class
class Game
  include Play
  attr_accessor :play_turn

  def initialize
    @new_board = Board.new
    @gamer = Player.new
    @play_turn = false
  end

  def choose_player
    @gamer.assign_first_name
    @gamer.assign_second_name
    @gamer.show_names
    @new_board.layout
  end

  def turn
    until winner_x?(@new_board.board) || winner_o?(@new_board.board)
      case @play_turn
      when false
        validation_x
        @new_board.layout
        x_win_draw_condition
      when true
        validation_o
        @new_board.layout
        o_win_draw_condition
      end
    end
  end

  def validation_x
    puts "Make your move #{@gamer.name1}!"
    (return @play_turn = true unless @gamer.player1_move(@new_board.board) == false) until @play_turn == true
  end

  def validation_o
    puts "Make your move #{@gamer.name2}!"
    (return @play_turn = false unless @gamer.player2_move(@new_board.board) == false) until @play_turn == false
  end

  def x_win_draw_condition
    if full?(@new_board.board)
      puts 'It is a draw'
    elsif winner_x?(@new_board.board)
      puts "#{@gamer.name1} Wins!! Game Over!"
    end
  end

  def o_win_draw_condition
    if full?(@new_board.board)
      puts 'It is a draw!'
    elsif winner_o?(@new_board.board)
      puts "#{@gamer.name2} Wins!! Game Over"
    end
  end
end

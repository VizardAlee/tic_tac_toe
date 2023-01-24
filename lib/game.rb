# frozen_string_literal: false

require_relative 'board'
require_relative 'player'
require_relative 'play_module'

# tic tac toe game class
class Game
  attr_accessor :play_turn

  include Play

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
    case @play_turn
    when false
      @gamer.player1_move(@new_board.board)
      @play_turn = true
      @new_board.layout
    when true
      @gamer.player2_move(@new_board.board)
      @play_turn = false
      @new_board.layout
    else
      puts 'Nothing to see here'
    end
  end
end

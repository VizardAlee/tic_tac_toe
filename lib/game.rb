# frozen_string_literal: false

require_relative 'board'
require_relative 'player'

# tic tac toe game class
class Game
  def initialize
    @new_board = Board.new
    @gamer = Player.new
  end

  def choose_player
    @gamer.assign_first_name
    @gamer.assign_second_name
    @gamer.show_names
    @new_board.layout
  end
end

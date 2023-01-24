# frozen_string_literal: false

require_relative 'game'

# game_play Module
module Play
  def turn(play_turn)
    case play_turn
    when true
      false
    when false
      true
    else
      "#{play_turn} is not recognized"
    end
  end
end

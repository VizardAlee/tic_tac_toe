# frozen_string_literal: false

# game_play Module
module Play
  def position_vacant?(spot, board)
    board[spot].empty?
  end

  def move_valid?(spot, board)
    begin
      spot = spot.to_i
      position_vacant?(spot, board) && spot >= 0 && spot <= 8 ? true : false
    rescue => exception
      puts 'Please choose a valid spot!!'
      false
    end
  end

  def full?(board)
    board.none?(&:empty?)
  end

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

  def winner_x?(board)
    if board[0..2].all?('X') || board[3..5].all?('X') || board[6..8].all?('X')
      true
    elsif board[0] == 'X' && board[4] == 'X' && board[8] == 'X'
      true
    elsif board[2] == 'X' && board[4] == 'X' && board[6] == 'X'
      true
    elsif board[0] == 'X' && board[3] == 'X' && board[6] == 'X'
      true
    elsif board[1] == 'X' && board[4] == 'X' && board[7] == 'X'
      true
    elsif board[2] == 'X' && board[5] == 'X' && board[8] == 'X'
      true
    else
      false
    end
  end

  def winner_o?(board)
    if board[0..2].all?('O') || board[3..5].all?('O') || board[6..8].all?('O')
      true
    elsif board[0] == 'O' && board[4] == 'O' && board[8] == 'O'
      true
    elsif board[2] == 'O' && board[4] == 'O' && board[6] == 'O'
      true
    elsif board[0] == 'O' && board[3] == 'O' && board[6] == 'O'
      true
    elsif board[1] == 'O' && board[4] == 'O' && board[7] == 'O'
      true
    elsif board[2] == 'O' && board[5] == 'O' && board[8] == 'O'
      true
    else
      false
    end
  end
end

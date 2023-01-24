# frozen_string_literal: false

# player class
class Player
  attr_accessor :name1, :name2, :player1, :player2
  attr_reader :marker

  def initialize; end

  def assign_first_name(name = [])
    puts 'Your name player 1'
    name << gets.chomp
    @name1 = name.join
  end

  def assign_second_name(name = [])
    puts 'Your name player 2'
    name << gets.chomp
    @name2 = name.join
  end

  def show_names
    puts "#{@name1} VS #{@name2}! Let's Goooo!!!"
  end

  def place
    gets.chomp.to_i
  end
end

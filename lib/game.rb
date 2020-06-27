require_relative "person"

class Game
  attr_accessor :array
  def initialize
    @array = ["Rock","Paper","Scissors"]
    @player_1 = 0
    @computer = 0
  end

  def play(choice)
    choice_1 = choice
    computer_choice = @array.sample

    string = "Computer chose #{computer_choice}. "

    if choice_1 == computer_choice
      string << "It's a draw"
    elsif
      @array.last == choice_1 && @array[0] == computer_choice
      string << "#{computer_choice} beats #{choice_1}. Computer wins"
    elsif
      @array.last == computer_choice && @array[0] == choice_1
      string << "#{choice_1} beats #{computer_choice}. Player wins"
    elsif
      @array.index(choice_1) >= @array.index(computer_choice)
      string << "#{choice_1} beats #{computer_choice}. Player wins"
    elsif
      @array.index(choice_1) <= @array.index(computer_choice)
      string << "#{computer_choice} beats #{choice_1}. Computer wins"
    end
    string
  end
end
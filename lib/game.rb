class Game
  attr_accessor :array, :player_1, :player_2

  def self.create(player_1,player_2 = nil)
    @game = Game.new(player_1,player_2)
  end

  def self.instance
    @game
  end

  def initialize(name = "default", name2 = nil, person = Person)
    @array = ["Rock","Paper","Scissors"]
    @player_1 = person.new(name)
    @player_2 = person.new(name2)
  end

  def play(choice)
    choice_1 = choice
    computer_choice = @array.sample
    player_1_index = @array.index(choice_1)
    computer_index = @array.index(computer_choice)

    string = "Computer chose #{computer_choice}. "

    if choice_1 == computer_choice
      string << "It's a draw"
    elsif
      @array[player_1_index-1] == computer_choice
      string << "#{choice_1} beats #{computer_choice}. Player wins"
      @player_1.round_win
    else
      string << "#{computer_choice} beats #{choice_1}. Computer wins"
      @player_2.round_win
    end
    string
  end

  def winner
    if @player_2.points > @player_1.points
      "#{@player_2.name} wins!"
    else
      "#{@player_1.name} wins!"
    end
  end
end
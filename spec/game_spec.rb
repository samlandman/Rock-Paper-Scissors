require 'game'

describe Game do
  let(:person_double) { double :person }
  # expect(person_double).to receive(:points)
  let(:person_class_double) { double :person_class, new: person_double }
  let(:game) { Game.new("Name", "Computer", person_class_double) }
  
  describe '#initialize' do
    it 'is an instance of game' do
      # person_double = double :person, points: 0
      # person_class_double = double :person_class, new: person_double
      # game = Game.new("Name","Computer",person_class_double)
      expect(game).to be_an_instance_of(Game)
    end
  end
  describe '#play' do
    it 'is a draw if both have the same score' do
      srand(0) #computer is rock
      expect(game.play("Rock")).to eq("Computer chose Rock. It's a draw")
    end
    it 'Computer wins if Rock and Computer has Paper' do
      srand(1) #computer is paper
      expect(person_double).to receive(:round_win)
      expect(game.play("Rock")).to eq("Computer chose Paper. Paper beats Rock. Computer wins")
    end
    it 'Player 1 wins if Rock and Computer has Scissors' do
      srand(4) #computer is scissors
      expect(person_double).to receive(:round_win)
      expect(game.play("Rock")).to eq("Computer chose Scissors. Rock beats Scissors. Player wins")
    end
  end
end
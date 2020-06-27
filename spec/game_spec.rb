require 'game'

describe Game do
  describe '#initialize' do
    it 'is an instance of game' do
      game = Game.new
      expect(game).to be_an_instance_of(Game)
    end
  end
end
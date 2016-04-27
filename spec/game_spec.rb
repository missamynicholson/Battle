require 'game'

describe Game do
	subject(:game) { described_class.new }
  let(:player) { spy(:player) }

  describe "#attack" do
    it "Reduces player\'s HP" do
      game.attack(player)
      expect(player).to have_received(:receive_damage).with(Game::DEFAULT_ATTACK)
    end
  end

end
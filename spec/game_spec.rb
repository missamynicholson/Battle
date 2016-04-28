require 'game'

describe Game do

  subject(:game)  { described_class.new(player1, player2) }
  let(:player1)   { double :player }
  let(:player2)   { double :player }

  describe 'player 1' do
    it "gets player 1" do
      expect(game.player1).to eq player1
    end
  end

  describe '#attack' do
    it "damages the other player" do
      expect(player1).to receive(:lose_hit_points)
      game.attack(player1)
    end
  end
end
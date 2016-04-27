require 'game'

describe Game do

  subject(:game)  { described_class.new }
  let(:chris)     { double :player }
  let(:ben)       { double :player }


  describe '#attack' do
    it "damages the other player" do
      expect(chris).to receive(:lose_hit_points)
      game.attack(chris)
    end
  end
end
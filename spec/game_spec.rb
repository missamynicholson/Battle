require 'game'

describe Game do
  subject(:game){described_class.new(player_1: player_1, player_2: player_2)}
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#attack' do
    it 'can attack a player' do
      expect(player_1).to receive :attacked
      game.attack(player_1)
    end
  end

  describe '#switch_roles' do
    it 'switches the role of player_1 and player_2' do
      game.switch_roles
      expect(game.player_1).to eq player_2
    end
  end
end

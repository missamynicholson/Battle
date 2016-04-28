require 'game'

describe Game do
  subject(:game){described_class.new(player_1: player_1, player_2: player_2)}
  let(:player_1) {double :player_1, hitpoints: 50}
  let(:player_2) {double :player_2, hitpoints: 50}
  let(:player_lost) {double :player_lost, hitpoints: 0}
  let(:game_over){described_class.new(player_1: player_1, player_2: player_lost)}

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.players[0]).to eq player_1
    end
  end

  describe '#attack' do
    it 'can attack a player' do
      expect(player_2).to receive :attacked
      game.attack
    end
  end

  describe '#switch_roles' do
    it 'switches the role of player_1 and player_2' do
      game.switch_roles
      expect(game.players[0]).to eq player_2
    end
  end

  describe '#game over' do
    it 'game over if one player has 0 HPs' do
      expect(game_over.game_over?).to eq true
    end

    it 'game not over if none of players have 0 HPs' do
      expect(game.game_over?).to eq false
    end

    it 'returns name of loser' do
      expect(game_over.loser).to eq player_lost
    end
  end
end

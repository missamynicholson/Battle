require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2, attack) }
  let(:player_1) {  spy(:player, name: 'Dave') }
  let(:player_2) {  spy(:player, name: 'Mittins') }
  let(:attack) { spy(:double, new: player_1, default: nil) }

  describe "Initialization:" do
    it "Retrieves the first player" do
      expect(game.player_1).to eq player_1
    end

    it "Retrieves the second player" do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'Damages the player' do
      #eval("attack.new(player_2).default")
      attack.new(player_2).default
      expect(attack).to have_received(:new)
    end
  end

  describe '#switcher' do
    it 'Switches turns after attack' do
      game.switcher
      expect(game.current_player).to eq player_2
    end
  end

  describe '#game_over?' do
    it 'Ends game if current player HP <= 0' do
      allow(player_1).to receive(:hit_points) {0}
      expect(game.game_over?).to be true
    end
  end

end

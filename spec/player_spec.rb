require 'player'

describe Player do
  subject(:player_1){described_class.new(name:"Player_1", hitpoints: Player::HITPOINTS_START)}
  subject(:player_2){described_class.new(name:"Player_2", hitpoints: Player::HITPOINTS_START)}

  describe '#name' do
    it 'returns the name of the player' do
      sign_in_and_play
      expect(player_1.name).to eq "Player_1"
    end
  end

  describe '#hitpoints at start' do
    it 'returns the hitpoints of the player as deafult at start' do
      sign_in_and_play
      expect(player_1.hitpoints).to eq Player::HITPOINTS_START
    end
  end

  describe '#reduces hitpoints when attacked' do
    it 'reduces the hitpoints by 10' do
      allow(Kernel).to receive(:rand) {10}
      expect{player_2.attacked}.to change {player_2.hitpoints}.by(-10)
    end
  end
end

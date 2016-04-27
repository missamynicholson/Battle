require 'player'

describe Player do
  subject(:player){described_class.new(name:"Player_1")}

  it 'returns the name of the player' do
    sign_in_and_play
    expect(player.name).to eq "Player_1"
  end
end

require 'game'

describe Game do
  subject(:game){described_class.new}
  let(:player) {double :player}

  it 'can attack a player' do
    expect(player).to receive :attacked
    game.attack(player)
  end

end

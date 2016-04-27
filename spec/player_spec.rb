require 'player'

describe Player do
	subject(:player) { described_class.new("Dave") }
  let(:opponent) { spy(:player) }

	describe "#name" do
		it "returns the name" do
			expect(player.name).to eq "Dave"
		end
	end

  describe "#attack" do
    it "reduce opponent\'s HP" do
      player.attack(opponent)
      expect(opponent).to have_received(:reduce_hp).with(Player::DEFAULT_ATTACK)
    end
  end

  describe "#reduce_hp" do
    it "reduces player\'s own hp" do
      player.reduce_hp(10)
      expect(player.hp).to eq(Player::MAXIMUM_HP - 10)
    end
  end

end
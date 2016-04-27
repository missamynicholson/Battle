require 'player'

describe Player do
	subject(:player) { described_class.new("Dave") }
  let(:opponent) { spy(:player) }

	describe "#name" do
		it "Returns the name" do
			expect(player.name).to eq "Dave"
		end
	end

  describe "#receive_damage" do
    it "Reduces player\'s own hp" do
      player.receive_damage(10)
      expect(player.hp).to eq(Player::MAXIMUM_HP - 10)
    end
  end

end
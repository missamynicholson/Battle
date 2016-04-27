require 'player'

describe Player do
	subject(:player) { described_class.new('Dave') }

	describe "#name" do
		it "returns the name" do
			expect(player.name).to eq 'Dave'
		end
	end

end
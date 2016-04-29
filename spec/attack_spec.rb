require 'attack'

describe Attack do
	subject(:attack) { Attack.new(opponent) }
  let(:opponent) { spy(:opponent) }

  describe '#initialize' do
    it 'Returns the opponent' do
      expect(attack.opponent).to eq opponent
    end
  end

  describe '#default' do
	  it "calls the default attack on the opponent" do
	  	attack.default
	  	expect(opponent).to have_received(:receive_damage)
	  end
	end
end
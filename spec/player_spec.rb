require 'player'

describe Player do
  subject(:ben) { Player.new('Ben')}
  subject(:chris) { Player.new('Chris')}

  describe '#name' do
    it "returns its name" do
      expect(ben.name).to eq 'Ben'
    end
  end

  describe '#hit_points' do
    it "returns the hit points" do
      expect(ben.hit_points).to eq described_class::STARTING_HP
    end
  end

  describe '#lose_hit_points' do
    it "reduces the other players's hit points" do
      expect {ben.lose_hit_points}.to change { ben.hit_points }.by(-10)
    end
  end

end
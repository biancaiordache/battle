require 'player'

describe Player do
  subject(:bianca) { Player.new('Bianca') }
  subject(:makers) { Player.new('Makers') }

  describe '#name' do
    it 'returns the name' do
      expect(bianca.name).to eq 'Bianca'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(bianca.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(makers).to receive(:receive_damage)
      bianca.attack(makers)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { bianca.receive_damage }.to change { bianca.hit_points }.by(-10)
    end
  end
end

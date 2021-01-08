require 'player'

describe Player do
  subject(:bianca) { Player.new('Bianca') }

  describe '#name' do
    it 'returns the name' do
      expect(bianca.name).to eq 'Bianca'
    end
  end
end

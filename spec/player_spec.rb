require 'player'

describe Player do
  describe 'initialization' do
    it 'valid symbol does not raise an error' do
      expect{ Player.new('mock name',"X") }.not_to raise_error
      expect{ Player.new('mock name',"O") }.not_to raise_error
    end

    it 'invalid symbol raises an error' do
      expect{ Player.new(double,'z') }.to raise_error(ArgumentError, 'User Symbol is invalid')
    end
  end

  describe '#name' do
    it 'returns the name of the player' do
      player = Player.new('test name', 'X')

      expect(player.name).to eq('test name')
    end
  end

  describe '#symbol' do
    it 'returns the name of the player' do
      player = Player.new('mock name', 'X')

      expect(player.symbol).to eq('X')
    end
  end
end

describe Player do
  let(:name)    { "player" }
  let(:player_1) { Player.new(name,"X") }
  let(:player_2) { Player.new(name,"O") }

  describe 'initialization' do
    it 'name is set' do
      expect(player_1.name).to eq(name)
    end
    it 'symbol is set correctly to X' do
      expect(player_1.symbol).to eq("X")
    end
    it 'symbol is set correctly to O' do
      expect(player_2.symbol).to eq("O")
    end
    it 'symbol must be X or O' do
      expect{ Player.new(name,"z") }.to raise_error(ArgumentError, 'User Symbol is invalid')
    end
  end
end

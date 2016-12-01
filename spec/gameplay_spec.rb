describe Gameplay do
  let(:game) { Gameplay.new("player_1","player_2") }

  describe 'initializtion' do
    it 'an instance can be created' do
      expect(game).to be_instance_of(Gameplay)
    end
    it 'with two players' do
      expect(game.player_1).to eq("player_1")
      expect(game.player_2).to eq("player_2")
    end
  end

  describe '#display' do
    it 'calls the Print class to print the board' do
      expect(Printer).to receive(:print)
      game.display
    end
  end

  context 'Main gameplay' do
    it 'current player can be checked' do
      expect(game.current_player).to eq("player_1")
    end

    it 'current player is switched after each play' do
      expect(game.current_player).to eq("player_1")
      game.play(1,1)
      expect(game.current_player).to eq("player_2")
    end
  end
end

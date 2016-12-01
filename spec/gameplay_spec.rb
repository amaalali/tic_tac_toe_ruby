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

  it 'current player can be checked' do
    expect(game.current_player).to eq("player_1")
  end

  # describe 'main gameplay' do
  #   it 'current player can play' do
  #     # game.play(1,1)
  #     expect(game.display).to have_called(Print)
  #   end
  # end
end

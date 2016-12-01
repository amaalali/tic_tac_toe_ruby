class Gameplay
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def player_1
    @player_1.dup
  end

  def player_2
    @player_2.dup
  end
end

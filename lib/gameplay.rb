class Gameplay
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
  end

  def player_1
    @player_1.dup
  end

  def player_2
    @player_2.dup
  end

  def current_player
    @current_player.dup
  end
end

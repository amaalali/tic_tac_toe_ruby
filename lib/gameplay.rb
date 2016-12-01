class Gameplay
  def initialize(player_1, player_2)
    @players = [ Player.new(player_1,'X'), Player.new(player_2,'O') ]
    @current_player = @players[0]
  end

  def player_1
    @players[0].name
  end

  def player_2
    @players[1].name.dup
  end

  def current_player
    @current_player.name.dup
  end
end

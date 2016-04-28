class Game

  attr_reader :players

  def initialize(player1, player2)
    @players = [player1,player2]
  end

  def attack
    players[1].lose_hit_points
  end

  def switch
    @players[0], @players[1] = @players[1], @players[0]
  end

end
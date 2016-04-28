class Game

  attr_reader :players

  def initialize(player_1:, player_2:)
    @players = [player_1, player_2]
  end

  def attack
    @players[1].attacked
  end

  def switch_roles
    @players[0], @players[1] = @players[1], @players[0]
  end
end

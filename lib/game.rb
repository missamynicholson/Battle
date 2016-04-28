class Game

  attr_reader :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def attack(player)
    player.lose_hit_points
    switch
  end

  private

  def switch
    @current_player = current_player == player1 ? player2 : player1
  end

end

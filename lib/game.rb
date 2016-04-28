class Game

  # attr_reader :player1, :player2, :current_player
  attr_reader :players

  def initialize(player1, player2)
    # @player1 = player1
    # @player2 = player2
    # @current_player = player1
    # @non_current_player = player2
    # @empty
    @players = [player1,player2]
  end

  # def attack(player)
  #   player.lose_hit_points
  #   switch
  # end

  def attack
    players[1].lose_hit_points
  end


  def switch
    # @current_player = current_player == player1 ? player2 : player1
    # @current_player = current_player == player1 ? player2 : player1
    # @current_player = @non_current_player
    # @non_current_player = @current_player
    @players[0], @players[1] = @players[1], @players[0]
  end

end
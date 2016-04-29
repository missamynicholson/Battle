class Game

  attr_reader :player_1, :player_2, :current_player, :opponent

  def initialize(player_1, player_2, attack)
  	@player_1 = player_1
  	@player_2 = player_2
    @current_player = player_1
    @opponent = player_2
    @attack = attack
  end

  def self.create(player_1, player_2, attack)
  	@game = Game.new(player_1, player_2, attack)
  end

  def self.instance
  	@game
  end

  def attack(method_of_attack)
    eval("@attack.new(@opponent).#{method_of_attack}")
  end

  def switcher
    @current_player, @opponent = @opponent, @current_player
  end

  def game_over?
    @current_player.hit_points <= 0
  end
end

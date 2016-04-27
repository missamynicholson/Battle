class Player

  DEFAULT_ATTACK = 10

	attr_reader :name, :hp

	def initialize(name)
		@name = name
    @hp = 100
	end

  def attack(opponent)
    opponent.reduce_hp(DEFAULT_ATTACK)
  end

  def reduce_hp(points)
    @hp -= points
  end


end
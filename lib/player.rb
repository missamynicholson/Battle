class Player
	
	MAXIMUM_HP = 100

	attr_reader :name, :hp

	def initialize(name)
		@name = name
    @hp = MAXIMUM_HP
	end

	def receive_damage(points)
		@hp -= points
	end

end
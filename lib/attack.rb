class Attack

	attr_reader :opponent

	def initialize(opponent)
		@opponent = opponent
	end

	def default
		opponent.receive_damage(Kernel.rand(1..10))
	end

	def paralyse
		opponent.paralyse if Kernel.rand(1..10) >= 7
	end

	def poison
	end
end

class Attack

	attr_reader :opponent

	def initialize(opponent)
		@opponent = opponent
	end
	
	def default
		opponent.receive_damage(Kernel.rand(1..10))
	end

	def sleep
	end

	def paralise
	end

	def poison
	end
end
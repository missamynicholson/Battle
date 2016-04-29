class Player
  HITPOINTS_START = 50
  attr_reader :name, :hitpoints

  def initialize(name:, hitpoints: HITPOINTS_START)
    @name = name
    @hitpoints = hitpoints
  end

  def attacked
    @hitpoints -= Kernel.rand(1..10)
  end
end

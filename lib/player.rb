class Player

  STARTING_HP = 100
  attr_reader :name, :hit_points

  def initialize(name, hit_points = STARTING_HP)
    @name = name
    @hit_points = hit_points
  end

  def lose_hit_points
    @hit_points -= 10
  end

end
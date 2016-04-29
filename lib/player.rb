class Player

  DEFAULT_HIT_POINTS = 60

  attr_reader :name, :hit_points

  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
    @paralysed = false
  end

  def receive_damage(points)
    @hit_points -= points
  end

  def computer?
    name == "Computer"
  end

  def paralyse
    @paralysed = true
  end

  def unparalyse
    @paralysed = false
  end

  def paralysed?
    paralysed
  end

  private
  attr_reader :paralysed


end

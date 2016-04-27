class Player
  attr_reader :name, :hitpoints

  def initialize(name:, hitpoints:)
    @name = name
    @hitpoints = hitpoints
  end
end

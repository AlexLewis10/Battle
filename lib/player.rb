class Player
  attr_reader :name, :health
  STARTING_HEALTH = 100
  def initialize(name)
    @name = name
    @health = STARTING_HEALTH
  end
  def name
    @name
  end
  def take_damage
    @health -= 10
  end
end

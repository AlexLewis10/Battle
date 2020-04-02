class Game
  attr_reader :player_one, :player_two
  
  def initialize(p1,p2)
    @player_one = p1
    @player_two = p2
  end

  def attack(player_name)
    player_name.take_damage
  end
end

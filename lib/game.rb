class Game
  attr_reader :player_one
  
  def initialize
    @player_one = nil
  end

  def attack(player_name)
    player_name.take_damage
  end
end

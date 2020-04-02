class Game
  attr_accessor :player_one, :player_two
  
  def initialize
    @player_one
    @player_two
  end

  def attack(player_name)
    player_name.take_damage
  end
end

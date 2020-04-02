class Game
  attr_reader :player_one, :player_two
  
  def initialize
    @player_one
    @player_two
  end

  def attack(player_name)
    player_name.take_damage
  end
end

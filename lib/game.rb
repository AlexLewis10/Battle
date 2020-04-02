class Game
  attr_reader :player_one, :player_two, :turn

  def initialize(p1,p2)
    @player_one = p1
    @player_two = p2
    @turn = 1
  end

  def attack(player_name)
    player_name.take_damage
  end

  def switch
    @turn = @turn == 1 ? 2 : 1
  end
end

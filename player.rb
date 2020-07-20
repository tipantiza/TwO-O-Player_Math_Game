class Player
  attr_reader :lives, :player
  attr_accessor :name
  @@player = 0
  def initialize (name)
    if @@player == 2
      @@player = 0
    else 
      @@player += 1
    end
    @player = "player #{@@player}"
    @name = name
    @lives = 3
  end
  def lose_a_life
    @lives -= 1
  end
end
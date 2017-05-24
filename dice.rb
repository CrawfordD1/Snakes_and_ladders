class Dice
  def initialize ()
    @dice = 1 + rand(6)
  end

  def roll
    return @dice
  end

end
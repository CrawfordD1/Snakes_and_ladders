require_relative ('dice.rb')



class Players
  def initialize (name)
    @dice = Dice.new()
    @name = name
    @position = 0
  end

  def get_name
    return @name
  end

  def get_position
    return @position
  end

  def change_position(new_pos)
    @position += new_pos
    # @position += @dice.roll()
  end


end
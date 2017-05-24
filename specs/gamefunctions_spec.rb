require ('Minitest/autorun')
require ('Minitest/rg')
require_relative ('../players.rb')
require_relative ('../dice.rb')
require_relative ('../gamefunctions.rb')

class TestPlayers < Minitest::Test
  def setup
    @player_one = Players.new("Player_1")
    @player_two = Players.new("Player_2")
    @dice = Dice.new()
  end

  def test_dice_returns__random_number
    assert_equal(4, @dice.roll())
  end

end

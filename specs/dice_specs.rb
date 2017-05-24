require ('Minitest/autorun')
require ('Minitest/rg')
require_relative ('../dice.rb')

class TestDice < Minitest::Test
def setup
@dice = Dice.new()
end

def test_dice_returns__random_number
assert_equal(4, @dice.roll())
end

end
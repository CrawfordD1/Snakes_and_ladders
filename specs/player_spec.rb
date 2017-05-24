require ('Minitest/autorun')
require ('Minitest/rg')
require_relative ('../players.rb')

class TestPlayers < Minitest::Test
def setup
@player_one = Players.new("Player_1")
@player_two = Players.new("Player_2")
  end



def test_names
  assert_equal('Player_1', @player_one.get_name())
  assert_equal('Player_2', @player_two.get_name())
end

def test_change_pos()
  assert_equal(5, @player_one.change_position(5))
end
end

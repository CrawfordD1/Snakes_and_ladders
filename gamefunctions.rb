require_relative ('players.rb')
require_relative ('dice.rb')

@player_one = Players.new("Player_1")
@player_two = Players.new("Player_2")
@player_three = Players.new ("Player_3")
@player_four = Players.new ("Player_4")
@dice = Dice.new()
players = [@player_one, @player_two, @player_three, @player_four]



def rotate_players(players)
  counter = 0
  win = false
  while win == false
    @dice = Dice.new()
    puts players[counter].get_name()
    puts players[counter].get_position()
    new_pos = @dice.roll()
    players[counter].change_position(new_pos)
    counter += 1
    if counter >= 4
      counter = 0
    end
    if players[counter].get_position >= 100
      win = true
      puts "#{players[counter].get_name()} has won!"
    end

  end
end


rotate_players(players)





# def initialize (players, dice)
#   @players = players
#   @dice = dice
# end

# if turn_counter % 2 == 0 
#   turn = "player_2"
#   turn_counter += 1
# else 
#   turn = "player_1"
#   turn_counter += 1

# end

# while turn_counter < 100 
#   puts turn
# end



















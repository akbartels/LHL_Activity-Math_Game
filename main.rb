require './game'
require './player'
require './turn'

game = NewGame.new("Amy", "Nolan")


# p game.player1.name
# p game.player2.score
# p game.current_player
# game.current_player = game.player2
# p game.current_player

# puts game.current_player.score
# puts game.current_player.lose_point
# puts game.current_player.score

# p game.current_player

# newturn = Turn.new(game.current_player.name)

# puts newturn.check_answer

# p game.current_player


#### DO NOTE DELETE BELOW!!! ####

# CHANGE PLAYER
# if (game.current_player == game.player1)
#   game.current_player = game.player2
# else
#   game.current_player = game.player1
# end
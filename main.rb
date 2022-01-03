require './player'
require './question'
require './turn'

print "Player1, please enter your name: "
player1 = gets.chomp

print "Player2, please enter your name: "
player2 = gets.chomp

players = Players.new(player1, player2)



new_game = Turn.new(players)

while !new_game.gameover?

  new_game.next_turn

end
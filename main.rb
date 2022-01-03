require './player'
require './question'
require './turn'

game1 = Players.new("stew", "kelsey")

new_game = Turn.new(game1)

new_game.askQuestion
new_game.next_turn
new_game.askQuestion
new_game.next_turn

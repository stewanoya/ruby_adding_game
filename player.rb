class Players

  attr_accessor :player1, :player2

  def initialize(player1, player2)
    @player1 = {name: player1, lives: 3}
    @player2 = {name: player2, lives: 3}
  end

end

class Turn

  def initialize(game)
    @game = game
    @players = [game.player1[:name], game.player2[:name]]
    @Turn_number = 1
    puts "Welcome to a new Game! In this corner #{@game.player1[:name]}, and in this corner #{@game.player2[:name]}"
    puts "------ TURN 1 ------"
    puts "#{@game.player1[:name]} Lives: #{@game.player1[:lives]}/3 \n#{@game.player2[:name]} Lives: #{@game.player1[:lives]}/3"
  end

  def next_turn
   @players = @players.rotate
    @Turn_number += 1
    puts "------ TURN #{@Turn_number} ------"
  end

  def askQuestion
    puts "==========="
    puts "this question is for #{@players.first()}"
    puts "-----------"
    question = Question.new
    puts question.question_string
    question.answer    
    if question.is_correct?
      puts "Correct! Hold onto that life of yours... for now."
    else 
      puts "Incorrect! I'll be taking one of those lives now >:)"
    end
  end

  def gameover?
    if @game.player1[:lives] == 0
    "Player 2: #{@game.player2[:name]} has won the game with a score of #{@game.player2[:lives]}/3"
    end
    if @game.player2[:lives] == 0
      "Player 1: #{@game.player1[:name]} has won the game with a score of #{@game.player1[:lives]}/3"
    end
  end


end

class Turn

  def initialize(game)
    @game = game
    @players = [game.player1, game.player2]
    @Turn_number = 0
    puts "Welcome to a new Game! In this corner we have => #{@game.player1[:name]} and in this corner we have => #{@game.player2[:name]}!!!!"
    sleep 2
  end

  def next_turn
    @question = Question.new
    @Turn_number += 1
    puts "------ TURN #{@Turn_number} ------"
    puts "#{@game.player1[:name]} Lives: #{@game.player1[:lives]}/3 <=VS=> #{@game.player2[:name]} Lives: #{@game.player2[:lives]}/3"
    self.askQuestion
    @players = @players.rotate
  end

  def askQuestion
    puts ""
    puts "==========="
    puts "This question is for #{@players.first()[:name]}"
    puts "==========="
    puts ""
    sleep 2
    
   @question.question_string
   @question.answer

    if @question.is_correct?
      puts "Correct! Hold onto that life of yours... for now."
      sleep 1.5
    else 
      puts "Incorrect! I'll be taking one of those lives now >:)"
      @players.first()[:lives] -= 1
      sleep 1.5
    end
  end

  def gameover?
    if @game.player1[:lives] == 0
      puts"========= GAME-OVER! ========="
      puts "#{@game.player2[:name]} has won the game with a score of #{@game.player2[:lives]}/3"
      puts"=============================="
      return true
    end

    if @game.player2[:lives] == 0
      puts"========= GAME-OVER! ========="
      puts "#{@game.player1[:name]} has won the game with a score of #{@game.player1[:lives]}/3"
      puts"=============================="
      return true
    end

    false
  end


end

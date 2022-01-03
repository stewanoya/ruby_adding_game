class Question

  def initialize
  @first_num = rand(1..20)
  @second_num = rand(1..20)
  end

  def question_string
    print "What is #{@first_num} + #{@second_num} equal to?"
  end

  def answer
    @player_answer = gets.chomp
  end

  def is_correct?
    if @first_num + @second_num == @player_answer.to_i
      true
    else 
      false
    end
  end



end



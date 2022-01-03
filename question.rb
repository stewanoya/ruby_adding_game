class Question

  attr_accessor :first_num, :second_num

  def initialize
  @first_num = rand(1..20)
  @second_num = rand(1..20)
  end

  def question_string
    puts "What is #{@first_num} + #{@second_num} equal to?"
  end

  def answer
    print "Answer:"
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



class Question
   attr_reader :correct_answer

  def initialize(question_limit)
    @first_number = rand((question_limit / 5).to_i..(question_limit))
    @second_number = rand((question_limit / 5).to_i..(question_limit))
    @correct_answer = @first_number + @second_number
  end

  def display_question
    "What's #{@first_number} + #{@second_number}? >  "
  end
  
  def correct?(guess)
    guess == @correct_answer
  end

end
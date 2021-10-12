class Question
  
  def self.random_number
    rand(1..20)
  end

  def self.new_question
    @number1 = random_number
    @number2 = random_number
    @answer = @number1 + @number2
    [@number1, @number2, @answer]
  end

end
require_relative './playerManager'


class Question
  attr_reader :question

  
  def randomNumberGenerator
    1 + rand(20)
  end

  def initialize
    @num1 = randomNumberGenerator()
    @num2 = randomNumberGenerator()
    @question = "What is #{@num1} + #{@num2} ?"
    @sum = @num1 + @num2
  end

  def check_answer(user_answer)
    @sum == user_answer
  end
end

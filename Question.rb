class Question
  attr_accessor :answer

  def initialize(name)
    @num1 = rand(21)
    @num2 = rand(21)
    @current_player = name
    @answer = @num1 + @num2
  end

  def question
    "#{@current_player}: What does #{@num1} plus #{@num2} equal?"
  end
end
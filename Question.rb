class Question
  def initialize(cp)
    @num1 = rand(21)
    @num2 = rand(21)
    @current_player = cp
  end

  def question
    "#{current_player}: What does #{num1} plus #{num2} equal?"
  end
  
  def incorrect
    "#{current_player}: Seriously? No!"
  end
  
  def correct
    "#{current_player}: YES! You are correct."
  end
end
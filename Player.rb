class Player
  attr_accessor :name, :score, :answer, :lives
  def initialize(n)
    @name = n
    @answer = gets.chomp
    @score = 0
    @lives = 3
  end

  def score 
    "#{score}/3"
  end

end


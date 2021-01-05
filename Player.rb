class Player
  attr_accessor :name, :score, :answer, :lives
  def initialize(n, s)
    @name = n
    @short_name = s
    @score = 3
    @answer = ''
  end

  def displayScore 
    "#{@short_name}: #{@score}/3"
  end

  # def answer
  #   $stdin.gets.chomp
  # end
end


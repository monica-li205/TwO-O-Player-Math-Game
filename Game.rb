#calling and logic for whether the game continues
require './Player'
require './Question'

class Game
  attr_accessor :current_player, :final_score, :winner

  def initialize
    @Player1 = Player.new("Player1")
    @Player2 = Player.new("Player2")
    # @current_player = 
    # @final_score = f
    # @winner = w
  end

  def newTurn
    question = Question.new(current_player)
    puts "----- NEW TURN ----- \n #{question} \n #{current_player.answer}"
    
  end

  def lastTurn 
    puts "----- NEW TURN -----\n ... some time later ... \n #{winner} wins with a score of #{final_score}"
  end

end

puts Game.new
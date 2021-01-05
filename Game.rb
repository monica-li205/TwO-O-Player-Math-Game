require './Player'
require './Question'

  @player1 = Player.new("Player1", "P1")
  @player2 = Player.new("Player2", "P2")
  @turn = 1
  @current_player = @player1

while @current_player.score > 0 do
  if @turn % 2 == 0 
    @current_player = @player2
  else 
    @current_player = @player1
  end

  if @turn == 1 
    nextQuestion = Question.new(@current_player.name)
    puts "#{nextQuestion.question}"
    @current_player.answer = gets.chomp

    if @current_player.answer.to_i == nextQuestion.answer.to_i
      puts "#{@current_player.name}: YES! You are correct.\n#{@player1.displayScore} vs #{@player2.displayScore}"
      @turn += 1
    else 
      @current_player.score -= 1
      puts "#{@current_player.name}: Seriously? No!\n#{@player1.displayScore} vs #{@player2.displayScore}"
      @turn += 1
    end

  elsif @turn > 1
    nextQuestion = Question.new(@current_player.name)
    puts "----- NEW TURN ----- \n#{nextQuestion.question}"  
    @current_player.answer = gets.chomp

    if @current_player.answer.to_i == nextQuestion.answer.to_i
      puts "#{@current_player.name}: YES! You are correct.\n#{@player1.displayScore} vs #{@player2.displayScore}"
      @turn += 1
    else 
      @current_player.score -= 1
      puts "#{@current_player.name}: Seriously? No!\n#{@player1.displayScore} vs #{@player2.displayScore}"
      @turn += 1
      if (@current_player.score == 0) && @current_player == @player1
        puts "----- NEW TURN -----\n... some time later ...\n#{@player2.name} wins with a score of #{@player2.score}\n----- GAME OVER -----\nGood Bye!"
      elsif (@current_player.score == 0) && @current_player == @player2
        puts "----- NEW TURN -----\n... some time later ... \n#{@player1.name} wins with a score of #{@player1.score}\n----- GAME OVER -----\nGood Bye!"
      end
    end
  end
end
class Main
  
  require "./Output"
  require "./Player"
  require "./Question"

  def initialize
    @current_player
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @current_player = @player1
  end

  def start

    while @player1.lives > 0 && @player2.lives > 0
      Output.new_turn
      question = Question.new_question
      Output.question(@current_player, question)
      player_answer = gets.chomp
      if player_answer.to_i == question[2]
        Output.right(@current_player)
        Output.score(@player1, @player2)
      else
        Output.wrong(@current_player)
        self.update_score(@current_player)
        Output.score(@player1, @player2)
      end
      if @current_player == @player1
        @current_player = @player2
      else
        @current_player = @player1
      end
    end
    if @player1.lives > 0
      winner = @player1
    else
      winner = @player2
    end
    Output.game_over(winner)
  end

  def update_score(player)
    player.lives -= 1
  end
end

game = Main.new
game.start
class Output

  def self.question(player, question)
    print "Player #{player.number}: What does #{question[0]} plus #{question[1]} equal?\n> "
  end

  def self.wrong(player)
    puts "Player #{player.number}: Seriously, No!"
  end

  def self.right(player)
    puts "Player #{player.number}: YES! You are correct."
  end

  def self.new_turn
    puts "-----NEW TURN-----"
  end

  def self.game_over(winner)
    puts "Player #{winner.number} wins with a score of #{winner.lives}/3\n-----GAME OVER-----\nGood bye!"
  end

  def self.score(player1, player2)
    puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
  end
end
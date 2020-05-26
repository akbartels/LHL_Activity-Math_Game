

class NewGame
  attr_reader :player1, :player2
  attr_accessor :current_player

  def initialize(player1, player2)
    @player1 = Player.new(player1)
    @player2 = Player.new(player2)
    @current_player = @player1
    game_loop
  end

  def change_player
    if (@current_player == @player1)
      @current_player = @player2
    else
      @current_player = @player1
    end 
  end

  def change_score(wasCorrect)
    if wasCorrect == false
      @current_player.lose_point
    end
  end

  def print_winner
    if @current_player.score != 0
      puts "🏆 #{current_player.name} is the winner!"
    else
      change_player
      puts "#{current_player.name} is the winner!"
    end
  end

  def current_score
    puts "\n---> Current Score <---"
    puts "#{@player1.name}: #{@player1.score}/3 \n#{@player2.name}: #{@player2.score}/3"
  end

  def game_loop

    while @player1.score.to_i != 0 && @player2.score.to_i != 0
      @newTurn = Turn.new(@current_player.name)
      @newTurn.ask_question
      wasCorrect = @newTurn.check_answer
      change_score(wasCorrect)
      change_player
      current_score
    end
    puts "\n>>>> GAME OVER <<<<"
    print_winner
    puts ">> Final Score:"
    puts "#{@player1.name}: #{@player1.score}/3 \n#{@player2.name}: #{@player2.score}/3"
  end
end



# game = NewGame.new("amy", "nolan")
# p game.player2.name
# p game.current_player.name

# - set up Game
# - start Game
# - store current player1
# - store players

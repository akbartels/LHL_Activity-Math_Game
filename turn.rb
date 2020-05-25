require './game'


class Turn
  attr_reader
  attr_writer 
  attr_accessor :x, :y, :pass

  def initialize(player)
    @x = rand(0...10)
    @y = rand(0...10)
    @pass = nil
    @player = player
    puts "\n---> It's #{@player}'s turn <---"
    
  end

  def ask_question
    puts "#{@player}, what is #{x} + #{y}?"
    @answer = gets.chomp
  end

  def check_answer
    if x + y == @answer.to_i
      correct(@answer)
    else
      wrong(@answer)
    end
  end

  def correct(answer)
    puts "#{answer} is correct!"
    @pass = true
  end

  def wrong(answer)
    puts "Ouch! #{answer} is not correct. You lose one point"
    @pass = false
  end

  



end



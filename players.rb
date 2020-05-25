
class Players
  attr_reader  
  attr_writer
  attr_accessor :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def lose_point
    @score = score - 1
  end
end

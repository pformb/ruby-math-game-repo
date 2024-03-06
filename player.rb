# This class represents a player in the game.
class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  # Allows the player to pick two numbers
  def pick_numbers
    puts "#{name}, pick two numbers between 1 to 20"
    print "> "
    number1 = $stdin.gets.chomp.to_i
    print "> "
    number2 = $stdin.gets.chomp.to_i

    [number1, number2]
  end

  # Gets the player's answer
  def get_answer
    print "#{name}, what is your answer? "
    $stdin.gets.chomp.to_f
  end

  # Decreases the player's life count
  def lose_life
    @lives -= 1
  end

  # Resets the player's lives
def reset_lives
  @lives = 3
end

end

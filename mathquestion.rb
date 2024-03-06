# This class represents a math question in the game.
class MathQuestion
  def initialize(numbers)
    @number1, @number2 = numbers
    @operation = ['+', '-', '*', '/'].sample
    @correct_answer = calculate_answer
  end

  # Asks the math question
  def ask_question
    puts "What is #{@number1} #{@operation} #{@number2}?"
  end

  # Checks if the player's answer is correct
  def correct?(player_answer)
    player_answer == @correct_answer
  end

  private

  # Calculates the correct answer
  def calculate_answer
    case @operation
    when '+' then @number1 + @number2
    when '-' then @number1 - @number2
    when '*' then @number1 * @number2
    when '/' then @number1 / @number2
    end
  end
end

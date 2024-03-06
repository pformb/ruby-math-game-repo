# This class represents the game logic and orchestrates the flow of the game.
class Game
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = @players.first
  end

# Starts the game loop
def start
  loop do
    # Reset lives for both players
    @players.each { |player| player.reset_lives }

    play_round
    break unless play_again?
  end
end


  private

# Plays a single round of the game
def play_round
  loop do
    math_question = MathQuestion.new(@current_player.pick_numbers)
    math_question.ask_question

    # Get the other player
    other_player = (@current_player == @players.first) ? @players.last : @players.first

    player_answer = other_player.get_answer

    if math_question.correct?(player_answer)
      puts "#{other_player.name}'s answer is correct!"
    else
      puts "#{other_player.name}'s answer is incorrect!"
      other_player.lose_life
      puts "#{other_player.name} has #{other_player.lives} lives remaining."

      break if other_player.lives.zero?
    end

    # Switch current player to the other player
    @current_player = other_player
  end

  # Determine the winner
  winner = @players.detect { |player| player.lives > 0 }
  puts "#{winner.name} has won the game!"
end


  # Switches the current player
  def switch_players
    @current_player = (@current_player == @players.first) ? @players.last : @players.first
  end

  # Prompts to play again
  def play_again?
    print "Do you want to play again? (yes/no): "
    play_again = $stdin.gets.chomp.downcase
    play_again == 'yes'
  end
end

# Requires all necessary files and starts the game.
require_relative 'game'
require_relative 'player'
require_relative 'mathquestion'

puts "Enter name of Player 1"
print "> "
player1_name = $stdin.gets.chomp
player1 = Player.new(player1_name)

puts "Enter name of Player 2"
print "> "
player2_name = $stdin.gets.chomp
player2 = Player.new(player2_name)

game = Game.new(player1, player2)
game.start

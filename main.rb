require_relative 'lib/board'
require_relative 'lib/player'

board = Board.new()
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

puts 'Welcome to Tic Tac Toe!'

puts Board.board_layout

Board.convert_to_array

puts player1.name
player1.choose_option
#puts "X\u0331"
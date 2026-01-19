require_relative 'lib/board'
require_relative 'lib/player'

board = Board.new()
player1 = Player.new()
player2 = Player.new()

puts 'Welcome to Tic Tac Toe!'

board.print_board
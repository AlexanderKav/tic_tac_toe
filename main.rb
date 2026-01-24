require_relative 'lib/board'
require_relative 'lib/player'

player1 = Player.new("Player 1")
player1.player_marker
player2 = Player.new("Player 2")
player2.player_marker


puts 'Welcome to Tic Tac Toe!'
puts "\n"


loop do
    puts "=================================================="
    Board.convert_to_string
    puts Board.convert_to_string 

    puts player1.name
    choice = player1.choose_option

    while Board.check_if_available?(choice[0]-1,choice[1]-1)
        puts player1.name
        choice = player1.choose_option
    end
    Board.board_layout[choice[0]-1][choice[1]-1] = player1.set_mark
    puts Board.convert_to_string 
    if Board.game_over?(player1.set_mark, player1.name) == true
        break
    end
    if Board.is_draw?
        puts "It's a draw!!!"
        break
    end

    puts player2.name
    choice = player2.choose_option
    while Board.check_if_available?(choice[0]-1,choice[1]-1)
        puts player2.name
        choice = player2.choose_option
    end
    Board.board_layout[choice[0]-1][choice[1]-1] = player2.set_mark
    puts Board.convert_to_string 
    if Board.game_over?(player2.set_mark, player2.name) == true
        break
    end
    if Board.is_draw?
        puts "It's a draw!!!"
        break
    end
    puts "=================================================="
    puts "\n"
end

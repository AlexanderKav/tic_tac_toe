class Board
    @@board_layout =[ 
    ["_", "_", "_"],
    ["_", "_", "_"],
    [" ", " ", " "],
]

  def self.board_layout
    @@board_layout
  end

  def self.convert_to_string
       @@board_layout.each_with_index.map do |group, i|
            group.join("|")
        end.join("\n")
  end

  def self.check_if_available?(row, column)
    if @@board_layout[row][column] == "X" || 
        @@board_layout[row][column] == "O"
        puts "Space already taken"
        return true
    else 
        return false
    end
  end

  def self.game_over?(mark, player_name)
    case    
        when 
            @@board_layout[0][0] == mark && @@board_layout[0][1]== mark && @@board_layout[0][2] == mark
                || 
            @@board_layout[1][0] == mark && @@board_layout[1][1] == mark && @@board_layout[1][2] == mark
                ||
            @@board_layout[2][0]== mark && @@board_layout[2][1]== mark && @@board_layout[2][2]== mark
                ||

            @@board_layout[0][0]== mark && @@board_layout[1][0]== mark && @@board_layout[2][0]== mark
                ||
            @@board_layout[0][1]== mark && @@board_layout[1][1]== mark && @@board_layout[2][1]== mark
                ||
            @@board_layout[0][2]== mark && @@board_layout[1][2] == mark && @@board_layout[2][2]== mark
                ||

            @@board_layout[0][0] == mark && @@board_layout[1][1]== mark && @@board_layout[2][2]== mark
                ||
            @@board_layout[0][2] == mark && @@board_layout[1][1]== mark && @@board_layout[2][0]== mark
                puts player_name + " won!!!"  
                puts "Game Over"
                true
        else 
            false
        end
    end


    def self.is_draw?
        @@board_layout.flatten.all? { |mark| mark == "X" || mark == "O"}
    end

end

class Player
    attr_reader :name
    @@players_created = 0
    def initialize(name)
        @name = name
        @@players_created +=1
        @player_mark = player_marker
    end

    def choose_option()
        position_choice = []
        print "Enter the row: "
        row = gets.chomp
        row = row.to_i
        row = valid_input?(row)
        position_choice.push(row)

        print "Enter the column: "
        column = gets.chomp
        column = column.to_i
        column = valid_input?(column)
        position_choice.push(column)
    end

    def player_marker()
        if @@players_created % 2 == 0
            @player_mark = "O"
        else
            @player_mark = "X"
        end
        @player_mark
    end

    def set_mark()
        @player_mark
    end

    def valid_input?(number)
        loop do
            if number > 3 || number < 1
                print "Invalid Input! "
                print "Enter a number between 1 and 3: "
                number = gets.chomp
                number = number.to_i
            else
                return number
            end
            
        end
    end

end

class Board
 attr_reader :board_layout
  def intialize()
 #   @board_layout = [
  #    '_','|_','|_',
   #   '_','|_','|_',
    #  ' ','| ','| ' 
    #]
    @board_layout = [1,2,3,3]

  end

  def

  def board_layout
   # for parts in @board_layout do
    #  puts parts
    #end
    @board_layout
  end

  def print_board
    puts @board_layout.join(" | ")
  end


end

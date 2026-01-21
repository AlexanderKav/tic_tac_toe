class Board
  #@@board_layout = 'Hello'
  #def intialize()
  #  @@board_layout = [
   #   '_','|_','|_',
    #  '_','|_','|_',
     # ' ','| ','| ' 
    #]

    @@board_layout = "_|_|_\n_|_|_\n | | "
     
    #@board_layout = [1,2,3,3]

  #end


  def self.board_layout
   # for parts in @board_layout do
    #  puts parts
    #end
    @@board_layout
  end

  def self.convert_to_array
    #@@board_layout.split("|")
    #puts @@board_layout.split("|").inspect
   puts @@board_layout.split("\n").inspect
   b = @@board_layout.split("\n")
    #puts @@b.inspect
   #b[0][0] = "X\u0331"
   #b[0][3] = "X\u0331"
   #b[0][6] = "X\u0331"
   #b[1][4] = "O\u0331"
   puts b
  end

 # def print_board
  #  puts @board_layout.join(" | ")
  #end


end

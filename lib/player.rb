class Player
  attr_reader :name
  def initialize(name)
    @name = name
  end

 # def name
  #  @name
  #end
def choose_option()
  puts "Enter the row: "
  row = gets.chomp
  row = row.to_i

  puts "Enter the column: "
  column = gets.chomp
  column = row.to_i
end


end
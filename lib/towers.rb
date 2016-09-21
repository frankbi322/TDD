
class Towers
  attr_accessor :towers
  def initialize
    @towers = [[3,2,1],[],[]]
  end

  def play
    until won?
      p @towers
      input = prompt
      # from_tower = get_from_tower
      # to_tower = get_to_tower
      move(input[0],input[1])
    end
    puts "You won!!"
  end

  # def get_to_tower
  #   puts "Select a to tower"
  #   to_tower = gets.chomp.to_i
  # end
  #
  # def get_from_tower
  #   puts "Select a from tower"
  #   from_tower = gets.chomp.to_i
  # end

  def prompt
    #begin
      puts "Select a from tower"
      from_tower = gets.chomp.to_i
      puts "Select a to tower"
      to_tower = gets.chomp.to_i
      #return [from_tower,to_tower] if valid_move?(from_tower,to_tower)
      #raise "Invalid Move" if !valid_move?(from_tower,to_tower)
    #rescue StandardError => e
    #  puts "Error was #{e.message}"
    # puts "Try again"
    #  retry
    #end
    return [from_tower,to_tower]
  end

  def move(from_tower, to_tower)
    raise "Invalid Move" if !valid_move?(from_tower, to_tower)
    @towers[to_tower] << @towers[from_tower].pop
  end

  def valid_move?(from_tower, to_tower)
    return false if @towers[from_tower].empty?
    return true if @towers[to_tower].empty?
    return false if @towers[to_tower].last < @towers[from_tower].last
    true
  end

  def won?
    @towers[0].empty? && (@towers[1].empty? || @towers[2].empty?)
  end

end

# game = Towers.new
# game.play

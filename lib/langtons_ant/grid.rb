class Grid

  def initialize(array)
    @grid = array
  end
  
  def place_ant(ant)
    @ant = ant
  end

  def colour_at(x,y)
    @grid[x][y]
  end

  def to_a
    @grid
  end

  def move_ant(number_of_times_to_move)

    number_of_times_to_move.times do
      x,y = find_the_ants_coordinates
      colour = @grid[x][y]
      @ant.current_cell_colour(colour) 
      @ant.move
      if colour == 'w'
        @grid[y][x] = 'b'
      elsif colour == 'b'
        @grid[y][x] = 'w'
      end
    end
  end

  def find_the_ants_coordinates
    @ant.what_are_your_coordinates
  end

  def find_ants_direction
    @ant.what_is_your_direction
  end

end

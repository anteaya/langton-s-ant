class Grid

  def initialize(array)
    @grid = array
  end
  
  def place_ant(ant)
    @ant = ant
  end

  def to_a
    @grid
  end

  def move_ant(number_of_times_to_move)
  end

  def find_the_ants_coordinates
    @ant.what_are_your_coordinates
  end

  def find_ants_direction
    @ant.what_is_your_direction
  end

end

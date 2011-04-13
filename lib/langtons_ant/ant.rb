class Ant
  attr_writer :direction
  DIRECTIONS = ["WEST", "NORTH", "EAST", "SOUTH"]
  MOVEMENT_OFFSETS = {"WEST"  => [-1, 0],
                      "NORTH" => [0, -1],
                      "EAST"  => [1, 0],
                      "SOUTH" => [0, 1]}

  def initialize(direction, x, y)
    @direction = direction.upcase
    @x = x.to_i
    @y = y.to_i
  end

  def move
    index = DIRECTIONS.find_index(@direction)
   
    offset = @colour == 'w' ? -1 : 1 
    @direction = DIRECTIONS[(index + offset) % 4]
    
    @x = @x + MOVEMENT_OFFSETS[@direction][0]
    @y = @y + MOVEMENT_OFFSETS[@direction][1]
  end

  def current_cell_colour(colour)
    @colour = colour
  end

  def what_are_your_coordinates
    [@x, @y]
  end

  def what_is_your_direction
    @direction
  end
end

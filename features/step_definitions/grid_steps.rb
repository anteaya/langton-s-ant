Given /^a Grid$/ do |table|
  @grid = Grid.new(table.rows)
end

Given /^there is a Ant facing ([^\s]+) on square \((\d+),(\d+)\)$/ do |direction, x, y|
  @ant = Ant.new(direction, x, y)
  @grid.place_ant(@ant) 
end

When /^the Ant moves "([^"]*)" times$/ do |number_of_times_to_move|
  @ant.move(number_of_times_to_move)
end

Then /^the Grid should be:$/ do |expected_grid|
  expected_grid.diff!(@grid.to_a)
end


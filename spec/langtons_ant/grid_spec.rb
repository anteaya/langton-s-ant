require 'spec_helper'

describe Grid do
  describe "#to_a" do
    context "with an empty grid" do
      it "should return an empty array" do
        grid = Grid.new([])
        grid.to_a.should == []
      end 
    end

    context "3x3 grid" do
      before do
        @grid_array = [['w','w', 'w'],['w','w','w'], ['w', 'w', 'w']]
      end
     
      it "should return a 3x3 array" do
        grid = Grid.new(@grid_array)
        grid.to_a.should == @grid_array
      end 
    end
  end

  describe "#move_ant" do
    def all_black_grid
      [['b', 'b', 'b'],
       ['b', 'b', 'b'], 
       ['b', 'b', 'b']]
    end

    it "should find the ants coordinates" do
      ant = Ant.new('North', 0, 0)
      grid = Grid.new(all_black_grid)
      grid.place_ant(ant)

      ant.should_receive(:what_are_your_coordinates)

      grid.find_the_ants_coordinates

    end

    context "a grid of all black cells" do
      it "should tell the ant its on a black cell" do
        ant = Ant.new('North', 0, 0)
        grid = Grid.new(all_black_grid)
        grid.place_ant(ant)

        ant.should_receive(:current_cell_colour).with('b')

        grid.move_ant(0)
      end
    end


    context "a grid of all white cells" do
      it "should tell the ant its on a white cell" do
        grid_array = [['w','w', 'w'],['w','w','w'], ['w', 'w', 'w']]
        ant = Ant.new('North', 0, 0)
        grid = Grid.new(grid_array)
        grid.place_ant(ant)

        ant.should_receive(:current_cell_colour).with('w')

        grid.move_ant(0)
      end

      it "should tell the ant to move" do
        grid_array = [['w','w', 'w'],['w','w','w'], ['w', 'w', 'w']]
        ant = Ant.new('North', 0, 0)
        grid = Grid.new(grid_array)
        grid.place_ant(ant)

        ant.should_receive(:move)

        grid.move_ant(0)
      end
    end
  end 

end 

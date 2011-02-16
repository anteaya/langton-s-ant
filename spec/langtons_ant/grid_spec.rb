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
end 

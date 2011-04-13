require 'spec_helper'

describe Ant do

  describe "#move" do
    before(:each) do
      @ant = Ant.new('EAST' , 1, 1)
    end
    
    context "ant is on a black cell" do
      before(:each) do
        @ant.current_cell_colour('b')
      end

      context "and turns right" do

        context "facing North" do
          before(:each) do
            @ant.direction = 'NORTH'
          end
          
          it "should move forward one cell" do
            @ant.move

            @ant.what_are_your_coordinates.should == [2,1]
          end
        end

        it "should be facing South when it started facing East" do
          @ant.direction = 'EAST'
          @ant.move

          @ant.what_is_your_direction.should == 'SOUTH'
        end

        it "should be facing West when it started facing South" do
          @ant.direction = 'SOUTH'
          @ant.move

          @ant.what_is_your_direction.should == 'WEST'        
        end
      end
    end

      context "ant is on a white cell" do
      before(:each) do
        @ant.current_cell_colour('w')
      end

      context "and turns left" do
        context "facing North" do
          before(:each) do
            @ant.direction = 'NORTH'
          end
          
          it "should move forward one cell" do
            @ant.move

            @ant.what_are_your_coordinates.should == [0,1]
          end
        end

        it "should be facing West when it started facing North" do
          @ant.direction = 'NORTH'
          @ant.move

          @ant.what_is_your_direction.should == 'WEST'
        end

        it "should be facing South when it started facing West" do
          @ant.direction = 'WEST'
          @ant.move

          @ant.what_is_your_direction.should == 'SOUTH'
        end
      end
    end
  end
  
end

Feature: Langtons Ant

Squares on a plane are colored variously either black or white. 
We arbitrarily identify one square as the "ant". 
The ant can travel in any of the four cardinal directions at each step it takes. 
The ant moves according to the rules below:

* At a black square, turn 90° right, flip the color of the square, move forward one unit
* At a white square, turn 90° left, flip the color of the square, move forward one unit

@wip
Scenario: 2 moves
 Given a Grid
   |w|w|w|
   |w|b|w|
   |w|w|w|
 And there is a Ant facing North on square (1,1)
 When the Ant moves "2" times
 Then the Ant should facing North on square (2,0)
 And the Grid should be:
   |w|w|w|
   |w|w|b|
   |w|w|w|

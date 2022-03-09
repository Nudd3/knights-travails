# knights-travails

This is a project that's part of The Odin Project's Full Stack Ruby on Rails curriculum. 

A knight in chess can move to any square on the standard 8x8 chess board from any other square on the board, given enough turns. Its basic move is two steps forward and one stop to the side. It can face any direction. 

#Assignment
Your task is to build a function knight_moves that shows the simplest possible way to get from one square to another by outputting all squares the knight wil stop on along the way. 

#Solution
The Knight class creates all the possible moves that a knight can take, and treats them as children. Moves that will place the knight outside the board are not included. 

The board class is where stuff is happening. With the help of Breadth-First Search I find the shortest path.
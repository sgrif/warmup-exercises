Pascal's Triangle Challenge

Write a program to compute the value of a given position in Pascal's Triangle
(See image).

The way to compute any given position's value is to add up the numbers to the
position's right and left in the preceding row. For instance, to compute the
middle number in the third row, you add 1 and 1; the sides of the triangle are
always 1 because you only add the number to the upper left or the upper right
(there being no second number on the other side).

The program should prompt the user to input a row and a position in the row.
The program should ensure that the input is valid before computing a value for
the position.

        1
       1 1
      1 2 1
     1 3 3 1
    1 4 6 4 1

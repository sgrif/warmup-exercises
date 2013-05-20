# Binary

A simple binary font has been constructed using only pipes and underscores.

The number is four rows high, three columns wide:

    _   #
   | |  # zero.
   |_|  #
        # the fourth row is always blank

        #
     |  # one.
     |  #
        # (blank fourth row)

Write a program that, given a 3 x 4 grid of pipes, underscores, and spaces,
can determine whether the the grid represents a zero, a one, or garble.

Anything else is considered garble, and can be represented with a '?'

Write a program that can convert this grid-based font into a string
representing regulary binary (e.g. "1011010010").

## Source
Inspired by the [Bank OCR kata](http://codingdojo.org/cgi-bin/wiki.pl?KataBankOCR).

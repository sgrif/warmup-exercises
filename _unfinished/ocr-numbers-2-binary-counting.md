# Binary Counting

A simple binary font has been constructed using only pipes and underscores.

The number consists of four rows high, three columns wide:

    _   #
   | |  # zero.
   |_|  #
        # the fourth row is always blank

        #
     |  # one.
     |  #
        # (blank fourth row)

Anything else is considered garble, and can be represented with a '?'

Write a program that can convert this grid-based font into regulary binary (e.g. 1011010010).

For numbers that don't come out garbled, provide a translation into decimal (e.g. 722).

## Source
Inspired by the [Bank OCR kata](http://codingdojo.org/cgi-bin/wiki.pl?KataBankOCR).

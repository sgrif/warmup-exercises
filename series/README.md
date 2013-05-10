# Series

Write a program that will take a string of digits and give you all the possible consecutive number series of length `n` in that string.

For example, the string `83689` has the following series of 3 digits:

* `[0, 1, 2]`
* `[1, 2, 3]`
* `[2, 3, 4]`
* `[3, 4, 5]`
* `[4, 5, 6]`
* `[5, 6, 7]`
* `[6, 7, 8]`
* `[7, 8, 9]`

```ruby
series = Series.new("01234")
series.slices(1)
# => [[0], [1], [2], [3], [4]]
series.slices(2)
# => [[0, 1], [1, 2], [2, 3], [3, 4]]
series.slices(3)
# => [[0, 1, 2], [1, 2, 3], [2, 3, 4]]
series.slices(4)
# => [[0, 1, 2, 3], [1, 2, 3, 4]]
series.slices(5)
# => [[0, 1, 2, 3, 4]]
series.slices(6)
# =>  series.rb:9:in 'slices': Not enough numbers for that. (ArgumentError)
```

## Source
A subset of the [Problem 8](http://projecteuler.net/problem=8) at Project Euler


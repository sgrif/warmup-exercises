# Hundred

Write a program that will read in a name from the command line and write it out 100 times.

Assume that the console is 80 columns wide, and that you don't want to break to the next line in the middle of a name.

Double-spacing is considered a bug.

## Hints

You can either use `gets` or `ARGV` to get the name to be printed.

```ruby
# get.rb
print "And the name is... "
puts gets
```

```sh
$ ruby get.rb
```

```ruby
# arguments.rb
puts ARGV.inspect
```

```sh
$ ruby arguments.rb one two three
```

## Source
[JavaRanch Cattle Drive, exercise 1b](http://www.javaranch.com/hundred.jsp)


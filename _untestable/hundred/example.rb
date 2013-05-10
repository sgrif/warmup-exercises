class Hundred
  attr_reader :name
  def initialize(name)
    @name = "#{name} "
  end

  def names_per_line
    # Avoid 80th column, due to double-spacing
    # issues on some computers
    79 / name.length
  end

  def print
    100.times do |i|
      if (i % names_per_line) == 0
        puts
      end
      Kernel.print name
    end
    puts
  end
end

name = ARGV.first || gets.chomp
Hundred.new(name).print

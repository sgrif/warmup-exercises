class Triplet

  attr_reader :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def sum
    a + b + c
  end

  def product
    a * b * c
  end

  def pythagorean?
    a**2 + b**2 == c**2
  end
end

require 'minitest/autorun'

class TripletTest < MiniTest::Unit::TestCase
  def test_sum
    assert_equal 12, Triplet.new(3, 4, 5).sum
  end

  def test_product
    assert_equal 60, Triplet.new(3, 4, 5).product
  end

  def test_pythagorean
    assert Triplet.new(3, 4, 5).pythagorean?
  end

  def test_not_pythagorean
    assert !Triplet.new(5, 6, 7).pythagorean?
  end

  def test_product_where_sum_is_1000

    class Problem
      def self.solve
        (1..1000).to_a.combination(3).each do |a, b, c|
          triplet = Triplet.new(a, b, c)
          if triplet.pythagorean? && triplet.sum == 1000
            return triplet.product
          end
        end
        raise 'Unable to locate such triplet'
      end
    end

    assert_equal 200*375*425, Problem.solve
  end
end

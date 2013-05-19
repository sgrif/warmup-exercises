class FizzBuzz
  def list
    (1..100).map {|i| puts convert(i)}
  end

  def convert(i)
    return i.to_s unless fizz?(i) || buzz?(i)
    s = ''
    s << 'Fizz' if fizz?(i)
    s << 'Buzz' if buzz?(i)
    s
  end

  private

  def fizz?(number)
    (number % 3) == 0 || number.to_s.include?('3')
  end

  def buzz?(number)
    (number % 5) == 0 || number.to_s.include?('5')
  end
end

require 'minitest/autorun'

class FizzBuzzTest < MiniTest::Unit::TestCase
  def setup
    @fizzbuzz = FizzBuzz.new
  end

  def test_numerals
    assert_equal '1', @fizzbuzz.convert(1)
    assert_equal '41', @fizzbuzz.convert(41)
  end

  def test_fizz
    assert_equal 'Fizz', @fizzbuzz.convert(3)
    assert_equal 'Fizz', @fizzbuzz.convert(6)
  end

  def test_buzz
    assert_equal 'Buzz', @fizzbuzz.convert(5)
    assert_equal 'Buzz', @fizzbuzz.convert(10)
  end

  def test_fizzbuzz
    assert_equal 'FizzBuzz', @fizzbuzz.convert(15)
    assert_equal 'FizzBuzz', @fizzbuzz.convert(30)
  end

  def test_fizz_stage2
    assert_equal 'Fizz', @fizzbuzz.convert(37)
    assert_equal 'Fizz', @fizzbuzz.convert(1337)
  end

  def test_buzz_stage2
    assert_equal 'Buzz', @fizzbuzz.convert(52)
    assert_equal 'FizzBuzz', @fizzbuzz.convert(3353)
  end

end

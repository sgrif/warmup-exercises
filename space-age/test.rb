require 'minitest/autorun'
require_relative './space_age'

class SpaceAgeTest < MiniTest::Unit::TestCase

  def test_age_in_seconds
    age = SpaceAge.new(1_000_000)
    assert_equal 1_000_000, age.seconds
  end

  def test_age_in_earth_years
    skip
    age = SpaceAge.new(1_000_000_000)
    assert_equal 31, age.on_earth
  end

  def test_age_in_mercury_years
    skip
    age = SpaceAge.new(2_134_835_688)
    assert_equal 67, age.on_earth
    assert_equal 278.19, age.on_mercury
  end

  def test_age_in_venus_years
    skip
    age = SpaceAge.new(189_839_836)
    assert_equal 6, age.on_earth
    assert_equal 9.75, age.on_venus
  end

  def test_age_on_mars
    skip
    age = SpaceAge.new(2_329_871_239)
    assert_equal 73, age.on_earth
    assert_equal 38.81, age.on_mars
  end

  def test_age_on_jupiter
    skip
    age = SpaceAge.new(901_876_382)
    assert_equal 28, age.on_earth
    assert_equal 2.36, age.on_jupiter
  end

  def test_age_on_saturn
    skip
    age = SpaceAge.new(3_000_000_000)
    assert_equal 95, age.on_earth
    assert_equal 3.23, age.on_saturn
  end

  def test_age_on_uranus
    skip
    age = SpaceAge.new(3_210_123_456)
    assert_equal 101, age.on_earth
    assert_equal 1.2, age.on_uranus
  end

  def test_age_on_neptune
    skip
    age = SpaceAge.new(8_210_123_456)
    assert_equal 260, age.on_earth
    assert_equal 1.58, age.on_neptune
  end

end

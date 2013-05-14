require 'minitest/autorun'
require 'minitest/pride'
require_relative './cipher'

class ShiftCipherTest < MiniTest::Unit::TestCase
  def setup
    @cipher = Cipher.new
  end

  def test_cipher_encode
    plaintext = "aaaaaaaaaa"
    ciphertext = "dddddddddd"
    assert_equal(ciphertext, @cipher.encode(plaintext))
  end

  def test_cipher_decode
    plaintext = "aaaaaaaaaa"
    ciphertext = "dddddddddd"
    assert_equal(plaintext, @cipher.decode(ciphertext))
  end

  def test_cipher_identity
    plaintext = "abcdefghij"
    assert_equal(plaintext, @cipher.decode(@cipher.encode(plaintext)))
  end
end

class SubstitutionCipherTest < MiniTest::Unit::TestCase
  def setup
    key = "abcdefghij"
    @cipher = Cipher.new(key)
  end

  def test_cipher_encode
    plaintext = "aaaaaaaaaa"
    ciphertext = "abcdefghij"
    assert_equal(ciphertext, @cipher.encode(plaintext))
  end

  def test_cipher_decode
    plaintext = "aaaaaaaaaa"
    ciphertext = "abcdefghij"
    assert_equal(plaintext, @cipher.decode(ciphertext))
  end

  def test_cipher_identity
    plaintext = "abcdefghij"
    assert_equal(plaintext, @cipher.decode(@cipher.encode(plaintext)))
  end

  # Extension 1
  def test_caeser_shift_encode
    plaintext = "iamapandabear"
    ciphertext = "ldpdsdqgdehdu"
    assert_equal(ciphertext, Cipher.new("d").encode(plaintext))
  end

  def test_double_shift_encode
    plaintext = "iamapandabear"
    ciphertext = "qayaeaagaciai"
    assert_equal(ciphertext, Cipher.new("iamapandabear").encode(plaintext))
  end

  # Extension 2
  def test_cipher_encode_wrap
    plaintext = "zzzzzzzzzz"
    ciphertext = "zabcdefghi"
    assert_equal(ciphertext, @cipher.encode(plaintext))
  end

  def test_cipher_with_caps_key
    skip
    assert_raises ArgumentError do
      Cipher.new("ABCDEF")
    end
  end

  def test_cipher_with_numeric_key
    skip
    assert_raises ArgumentError do
      Cipher.new("12345")
    end
  end

  def test_cipher_with_empty_key
    skip
    assert_raises ArgumentError do
      Cipher.new("")
    end
  end

  # Private method tests
  # def test_to_bytes
  #   assert_equal([0, 1, 2], @cipher.to_bytes("abc"))
  # end

  # def test_to_string
  #   assert_equal("abc", @cipher.to_string([0, 1, 2]))
  # end
end

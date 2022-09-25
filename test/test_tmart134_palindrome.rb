# frozen_string_literal: true

require "test_helper"

class TestTmart134Palindrome < Minitest::Test
  # def test_that_it_has_a_version_number
  #   refute_nil ::Tmart134Palindrome::VERSION
  # end

  # def test_it_does_something_useful
  #   assert true
  # end

  def test_non_palindrome
  	refute "apple".palindrome?
  end

  def test_literal_palindrome
  	assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
  	assert "Racecar".palindrome?
  end

  def test_palindrome_with_punctuation
  	assert "Madam, I'm Adam.".palindrome?
  end

  # def test_letters
  # 	assert_equal "MadamImAdam", "Madam, I'm  Adam.".letters
  # end

  #   def test_letters_reversed
  # 	assert_equal "Madam, I'm  Adam.".letters, "MadamImAdam"
  # end

  # def test_letters_again
  # 	assert "Madam, I'm  Adam.".letters == "MadamImAdam"
  # end
end


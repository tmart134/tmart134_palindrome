# frozen_string_literal: true

require_relative "tmart134_palindrome/version"

module Tmart134Palindrome

	#Returns true for a palindrome, false otherwise
	def palindrome?
		processed_content == processed_content.reverse
	end

	private

	#Returns content downcased for palindrome testing
	def processed_content
		#self.letters.downcase
		to_s.scan(/[a-z0-9]/i).join.downcase
	end
end

class String
	include Tmart134Palindrome
end

class Integer
	include Tmart134Palindrome
end


# class String

# 	#Returns true for a palindrome, false otherwise
# 	def palindrome?
# 		processed_content == processed_content.reverse
# 	end

# 	#Returns the letters in a string
# 	def letters
# 		the_letters =[]

# 		#letter_regex = /[a-z]/i

# 		self.chars.select { |c| c.match(/[a-z]/i) }.join

# 		# self.chars.each do |character|
# 		# 	if character.match(letter_regex)
# 		# 		the_letters << character
# 		# 	end
# 		# end

# 		# for i in 0..self.length-1
# 		# 	character = self[i]
# 		# 	if (character.match(letter_regex))
# 		# 		the_letters << character
# 		# 	end
# 		# end
# 		#the_letters.join
# 	end

# 	private

# 	#Returns content downcased for palindrome testing
# 	def processed_content
# 		#self.letters.downcase
# 		scan(/[a-z]/i).join.downcase
# 	end
# end

# module Tmart134Palindrome
#   class Error < StandardError; end
#   # Your code goes here...
# end

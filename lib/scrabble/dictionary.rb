require "ruby-dictionary"

module Scrabble
	class Dictionary
		DICTIONARY = Dictionary.from_file('./support/dictionary.txt', ' ')

		attr_accessor :dictionary
		def initialize

		end
	end
end

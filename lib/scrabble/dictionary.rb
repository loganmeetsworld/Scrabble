require "ruby-dictionary" 

module Scrabble
	class Dictionary

		attr_accessor :dictionary
		def initiliaze 
			@dictionary = Dictionary.from_file('./support/dictionary.txt', ' ')
		end
	end
end


module Scrabble
	class Dictionary

		attr_accessor
		def initialize

		end

		def valid_word?(word)
			File.open("./support/dictionary.txt") do |file|
				file.any? do |word|
					if word.include?(word.upcase)
						return true
					else
						false
					end	
				end
			end
		end
	end
end

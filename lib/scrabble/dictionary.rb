

module Scrabble
	class Dictionary

		attr_accessor
		def initialize

		end

		def valid_word?(word)
			File.open("./support/dictionary.txt") do |file|
				file.any? do |line|
					line.include?(word.upcase)
				end
			end
		end
	end
end

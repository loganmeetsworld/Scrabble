module Scrabble
	class Player
		
		attr_accessor :name, :plays

		def initialize(name)
			@name = name
			@plays = []
		end

		def play(word)
			if won?
				false
			else
				@plays.push(word.downcase)
			end
		end

		def total_score
			total = 0

			@plays.each do |word|
				total += Scrabble.score(word.downcase).to_i
			end

			return total
		end

		def won?
			# If the player has over 100 points, returns true, otherwise returns 'false'
			if total_score >= 100 
				return true
			else
				return false
			end
		end

		def self.highest_scoring_word(word_array)
			# Returns the highest scoring word the user has played.
		end

		def self.highest_word_score()
			# return highest_scoring_word
			# Returns the highest_scoring_word score.
		end
	end
end

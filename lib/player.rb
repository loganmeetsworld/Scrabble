module Scrabble
	class Player
		attr_accessor :name, :plays
		def initialize(name)
			# Called when you use Player.new,
			# sets up an instance with the instance variable name assigned

			@name = name
			# returns the @name instance variable

			@plays = []
			# Returns an Array of the words played by the player
		end

		def play(word)
			# Adds the input word to the plays Array
			# Returns false if player has already won

		end

		def self.total_score
			# Sums up and returns the score of the players words
		end

		def self.won?
			# If the player has over 100 points, returns true, otherwise returns 'false'
		end

		def self.highest_scoring_word(word_array)
			# Returns the highest scoring word the user has played.
		end

		def self.highest_word_score()
			return highest_scoring_word
			# Returns the highest_scoring_word score.
		end
	end
end

module Scrabble
  class Scrabble
    SCORE_VALUES = {
      1 => ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
      2 => ["D", "G"],
      3 => ["B", "C", "M", "P"],
      4 => ["F", "H", "V", "W", "Y"],
      5 => ["K"],
      8 => ["J", "X"],
      10 => ["Q", "Z"]
    }
    def self.score(word)
      if word[/^[a-zA-Z]+/] != word
        return "That is not a valid word."
      elsif word.length > 7
        return "Cannot have more than seven letters."
      end#end for if word block

      word.upcase!
      total_score = 0
      
      word_array = word.split("")
      word_array.each do |character|
          SCORE_VALUES.select do |point_value, letter|
            if letter.include?(character)
              total_score += point_value
            end#end for if value.includes? block
          end#end for SCORE_VALUES block
      end#end for word_array.each block
      return total_score
    end#end for self.score method

    def self.highest_score_from(array_of_words)
    end

  end
end

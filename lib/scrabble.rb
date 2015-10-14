module Scrabble
  class Scrabble
    SCORES_HASH = {
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
      word_array.each do |character|#can use .each_char method?
          SCORES_HASH.find_all do |point_value, letter|
            if letter.include?(character)
              total_score += point_value
            end#end for if value.includes? block
          end#end for SCORE_VALUES block
      end#end for word_array.each block
      return total_score
    end#end for self.score method

    def self.highest_score_from(array_of_words)
      best_score = 0
      winning_word = nil

      array_of_words.each do |word|
        current_score = self.score(word)#calling class method from above
        word.downcase!#I don't like that it upcases then downcases, refactor later
        while current_score > best_score
          best_score = current_score
          winning_word = word
        end#end of if current_score > best_score block
      end#end of array_of_words.each block
      return winning_word
    end#end of def self.highest_score_from block

  end
end

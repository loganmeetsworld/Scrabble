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
      if word_array.length == 7
        total_score += 50
      end

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
      score_hash = {}
      winners = []
      winner = nil

      array_of_words.each do |word, current_score|
        current_score = self.score(word)
        score_hash[word] = current_score
      end

      best_score = score_hash.values.max
      high_scores = score_hash.select{|key, value| value == best_score}.keys

      if high_scores.length > 1
        high_scores.each do |word|
          if word.length == 7
            winners.push(word)
            winner = winners[0].downcase
          end
        end

        if winners.length == 0
          winner = high_scores.min_by do |win|
            win.length
          end
        end

        return winner.downcase

      else
        return winner = high_scores[0].downcase
      end
    end
  end
end
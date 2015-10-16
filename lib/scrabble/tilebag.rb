module Scrabble
  class TileBag
    attr_accessor :tiles
    def initialize
      @tiles = {
        "A": 9, "B": 2, "C": 2, "D": 4, "E": 12,
        "F": 2, "G": 3, "H": 2, "I": 9, "J": 1,
        "K": 1, "L": 4, "M": 2, "N": 6, "O": 8,
        "P": 2, "Q": 1, "R": 6, "S": 4, "T": 6,
        "U": 4, "V": 2, "W": 2, "X": 1, "Y": 2,
        "Z": 1
      }
    end

    def draw_tiles(num)
      key_array = @tiles.keys

      tiles_drawn = key_array.sample(num)

      tiles_drawn.each do |letter|
        @tiles[letter] -= 1
      end

      return tiles_drawn
    end

    def tiles_remaining
      #returns number of tiles left in bag

      tiles.each do |key, value|
        value += value
      end
    end

  end
end

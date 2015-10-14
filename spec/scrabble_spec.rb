require "./lib/scrabble.rb"

describe Scrabble::Scrabble do
  describe "#score" do
    it "only takes characters that are letters" do
      expect(Scrabble::Scrabble.score("")).to eq "That is not a valid word."
      expect(Scrabble::Scrabble.score("83uejd9w0220330")).to eq "That is not a valid word."
      expect(Scrabble::Scrabble.score(" ")).to eq "That is not a valid word."
    end

    it "only takes seven letters" do
      expect(Scrabble::Scrabble.score("calculator")).to eq "Cannot have more than seven letters."
      # expect(Scrabble::Scrabble.score("handler")).to eq "Cannot have more than seven letters."
    end
    it "adds points properly" do
      expect(Scrabble::Scrabble.score("hello")).to eq 8
      expect(Scrabble::Scrabble.score("quiz")).to eq 22
      expect(Scrabble::Scrabble.score("it")).to eq 2
      expect(Scrabble::Scrabble.score("HanDLeR")).to eq 11
    end#end of it "adds points properly" block
  end#end of describe score do block

  describe "#highest_score_from" do
    it "returns word with highest score under normal circumstances" do
      expect(Scrabble::Scrabble.highest_score_from(["hello", "quiz", "it", "HanDLeR"])).to eq "quiz"
    end#end of it returns word with highest score block
  end#end of describe #highest_score_from block
end#end of describe Scrabble::Scrabble do block

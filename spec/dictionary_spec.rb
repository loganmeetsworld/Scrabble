require "./lib/scrabble_master.rb"

describe "Dictionary" do
  before :each do
    @dictionary = Scrabble::Dictionary.new
  end

  context "initializing" do
    it "returns a dictionary object" do
      expect(@dictionary).to be_an_instance_of Scrabble::Dictionary
    end
  end
  context "returns words from dictionary" do
    it "returns valid words only" do
      expect(@dictionary.valid_word?("ABACAS")).to be_truthy
      expect(@dictionary.valid_word?("abamp")).to be_truthy
      expect(@dictionary.valid_word?("flfflflfl")).to be false
    end
  end
end

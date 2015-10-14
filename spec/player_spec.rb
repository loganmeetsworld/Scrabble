require "./lib/player.rb"

describe Scrabble::Player do
  before :each do
    @player = Scrabble::Player.new("Norman")
  end

  describe "#new" do
    it "returns a Player object" do
      expect(@player).to be_an_instance_of Scrabble::Player
    end
    it "returns the Player name" do
      expect(@player.name).to eq "Norman"
    end
    it "returns an array of words played by the player" do
      expect(@player.plays.class).to be Array
    end
  end

  describe "playing Scrabble" do
    @player.play("hello")
    @player.play("eggplant")
    @player.play("coffee")

    it "returns array of played words" do
      expect(@player.plays).to eq ["hello", "eggplant", "coffee"]
    end
  end

end

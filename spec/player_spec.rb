require "./lib/scrabble_master.rb"

describe "Player" do
  player = Scrabble::Player.new("Norman")

  describe "playing Scrabble" do
    player.play("hello")
    player.play("eggs")
    player.play("coffee")

    context "initializing" do
      it "returns a Player object" do
        expect(player).to be_an_instance_of Scrabble::Player
      end
      it "returns the Player name, #name" do
        expect(player.name).to eq "Norman"
      end
      it "returns an array of words played by the player, #plays" do
        expect(player.plays.class).to be Array
      end
    end

    it "adds word, #play(word)" do
      expect(player.plays).to eq ["hello", "eggs", "coffee"]
    end

    it "totals the score, #total_score" do
      expect(player.total_score).to eq 28
    end

    it "returns false if under 100 points, #won?" do
      expect(player.won?).to eq false
    end

    it "returns the highest scoring word, #highest_scoring_word(word_array)" do 
      expect(player.highest_scoring_word(["hello", "this", "is", "the", "best"])).to eq "hello"
    end

    it "returns the highest score, #highest_score" do
      expect(player.highest_word_score).to eq 8
    end
  end
end

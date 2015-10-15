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
      it "returns the Player name" do
        expect(player.name).to eq "Norman"
      end
      it "returns an array of words played by the player" do
        expect(player.plays.class).to be Array
      end
    end

    it "adds word" do
      expect(player.plays).to eq ["hello", "eggs", "coffee"]
    end

    it "totals the score" do
      expect(player.total_score).to eq 28
    end
  end
end

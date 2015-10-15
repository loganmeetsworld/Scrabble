require "./lib/scrabble_master.rb"

describe "TileBag" do
  tilebag = Scrabble::TileBag.new

  context "initializing" do
    it "returns a tilebag object" do
      expect(tilebag).to be_an_instance_of Scrabble::TileBag
    end
  end
  describe "#draw_tiles(num)" do
    it "returns random tiles" do
      expect(draw_tiles(rand(7))).to not_eq draw_tiles(rand(7))
    end
    # it "removes tiles from default set" do
    #   expect(drawn_tiles)
    # end
  end
end
require "./lib/scrabble_master.rb"

describe "TileBag" do
  tilebag = Scrabble::TileBag.new

  context "initializing" do
    it "returns a tilebag object" do
      expect(tilebag).to be_an_instance_of Scrabble::TileBag
    end
  end
  
  describe "#draw_tiles"
	  it "returns random tiles" do
	    expect(tilebag.draw_tiles(rand(7))).not_to eq tilebag.draw_tiles(rand(7))
	  end
  it "removes tiles from default set" do
    expect(drawn_tiles)
  end
end
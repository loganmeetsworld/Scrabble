require "./lib/scrabble_master.rb"

describe "TileBag" do
  before :each do
    @tilebag = Scrabble::TileBag.new
  end

  context "initializing" do
    it "returns a tilebag object" do
      expect(@tilebag).to be_an_instance_of Scrabble::TileBag
    end
    it "contains 98 tiles" do
      total_tiles = @tilebag.tiles.values.inject{|sum, x| sum + x }
      expect(total_tiles).to eq 98
    end
  end

  describe "#draw_tiles" do

	  it "returns random tiles" do
	    expect(@tilebag.draw_tiles(7)).not_to eq @tilebag.draw_tiles(7)
	  end
  end# it "removes tiles from default set" do
  #   expect(drawn_tiles)
  # end
end

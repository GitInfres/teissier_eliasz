require './tetris'


describe Tetris, "#tourner" do
  it "returns tourner à 90° OK" do
    tetris = Tetris.new
    array =  bowling.tourner90(tableau)
    tetris.checkout.should eq(array)
    
  end
end

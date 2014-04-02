require './tetris'


describe Tetris, "#tourner" do
  it "returns OK" do
    init_tab =[
	 [0, 0, 1, 0],
	 [0, 0, 1, 0],
	 [0, 1, 1, 0],
	 [0, 0, 0, 0]]
    final_tab= [
         [0, 0, 0, 0],
         [0, 1, 0, 0],
         [0, 1, 1, 1],
         [0, 0, 0, 0]]
    tetris = Tetris.new
    tetris.tourner90droite(init_tab).should eq(final_tab)
    
  end
end

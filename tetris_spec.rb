require './tetris'


describe Tetris, "#tourner" do
  it "returns tourner à 90° droite OK" do
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
    array =  tetris.tourner90droite(init_tab)
    tetris.checkout(array).should eq(final_tab)
    
  end
end

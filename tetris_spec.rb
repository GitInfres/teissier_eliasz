require './tetris'


describe Tetris, "#tourner90droite" do
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

describe Tetris, "#tourner90gauche" do
  it "returns OK" do
    init_tab =[
     [0, 0, 1, 0],
     [0, 0, 1, 0],
     [0, 1, 1, 0],
     [0, 0, 0, 0]]
    final_tab= [
         [0, 0, 0, 0],
         [1, 1, 1, 0],
         [0, 0, 1, 0],
         [0, 0, 0, 0]]
    tetris = Tetris.new
    tetris.tourner90gauche(init_tab).should eq(final_tab)
    
  end
end

describe Tetris, "#moveright" do
  it "returns OK" do
    init_tab =[
     [0, 0, 1, 0],
     [0, 0, 1, 0],
     [0, 1, 1, 0],
     [0, 0, 0, 0]]
    final_tab= [
         [0, 0, 0, 1],
         [0, 0, 0, 1],
         [0, 0, 1, 1],
         [0, 0, 0, 0]]
    tetris = Tetris.new
    tetris.moveright(init_tab).should eq(final_tab)
    
  end
end

describe Tetris, "#moveleft" do
  it "returns OK" do
    init_tab =[
     [0, 0, 1, 0],
     [0, 0, 1, 0],
     [0, 1, 1, 0],
     [0, 0, 0, 0]]
    final_tab= [
         [0, 0, 0, 1],
         [0, 0, 0, 1],
         [0, 0, 1, 1],
         [0, 0, 0, 0]]
    tetris = Tetris.new
    tetris.moveleft(init_tab).should eq(final_tab)
  end
end

describe Tetris, "#movedown" do
  it "returns new position of tetra" do
	
    init_tab =[
     [0, 0, 1, 0],
     [0, 0, 1, 0],
     [0, 1, 1, 0],
     [0, 0, 0, 0]]
    final_tab= [
         [0, 0, 0, 0],
         [0, 0, 1, 0],
         [0, 0, 1, 0],
         [0, 1, 1, 0]]
    tetris = Tetris.new
    tetris.movedown(init_tab).should eq(final_tab)
    end
end

describe Tetris, "#tetra_gen" do
  it "returns aleatoire tetra" do
    init_tab =[
     [0, 0, 0, 0],
     [0, 0, 0, 0],
     [0, 0, 0, 0],
     [0, 0, 0, 0]]
    tetris = Tetris.new
    tetris.tetra_gen.should_not eq(init_tab)
    end
end

describe Tetris, "#islinefull" do
  it "returns OK if line is full" do
    init_tab =[
     [0, 0, 0, 0],
     [0, 0, 0, 0],
     [1, 1, 1, 1],
     [0, 0, 0, 0]]
    tetris = Tetris.new
    init_tab.isfull should eq(true)
    end
end

describe Tetris, "#purgeline" do
  it "returns game board with purged lines" do
    init_tab =[
     [0, 0, 0, 0],
     [0, 0, 0, 0],
     [1, 1, 1, 1],
     [0, 0, 0, 0]]
    final_tab =[
     [0, 0, 0, 0],
     [0, 0, 0, 0],
     [0, 0, 0, 0],
     [0, 0, 0, 0]]
    tetris = Tetris.new
    a.purge should eq(final_tab)
    end
end

describe Tetris, "#isgameover" do
  it "returns if game is finished or not" do
    init_tab =[
     [1, 1, 1, 1],
     [0, 0, 0, 0],
     [0, 0, 0, 0],
     [0, 0, 0, 0]]
     init_tab.islinefull should eq(true)
    end
end






# tetris.rb
class Tetris
	def tourner90droite(tab)
		#puts tab
		newTab=[[0, 0, 0, 0],[0, 0, 0, 0],[0, 0, 0, 0],[0, 0, 0, 0]]
		#puts newTab
		for i in 0..3
			for j in 0..3
				newTab[i][j]=tab[3-j][i]
			end
		end
		return newTab
	end
end

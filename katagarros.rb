require 'minitest/autorun'

class KatagarrosTest < Minitest::Unit::TestCase
	def test_score
		assert_equal [15,0], score_test(1)
	end
	def test_score_j1
		assert_equal [15,0], score_j1(1)
	end
	def test_points
		assert_equal [[15,0]], points(1)
	end
	def test_score_depart
		assert_equal [[0,0]], score_depart(1)
	end
	def test_points_gagnes
		assert_equal [[15,0]], donne_points(1)	
	end
	def test_points_gagnes_j1
		assert_equal [[40,0]], j1_gagne_x_fois(3)	
	end
	def test_points_gagnes_j2
		assert_equal [[15,0]], j1_gagne_x_fois(1)	
	end
	def test_sequence_jeu
		assert_equal [[15,0]], sequence_jeu
	end

end

def retourne(number)
	number
end

def score_test(x)
	score = [[0,0],[15,0], [30,0], [40,0]]
	score[x]
end

def score_j1(x)
	j1 = []
	score = [[0,0],[15,0], [30,0], [40,0]]
	j1[x] = score[x]
end

# On initialise le score
def score_depart(x)
score = {
	1 => [0,0]
}
[score[x]]
end

def points(x)
 	# système de points au tennis
	points = {
	  1 => [15,0],
	  2 => [30,0],
	  3 => [40,0],
	  4 => "jeu"
	 }
	[points[x]] 
end

def donne_points(x)
	points_gagnes = []
	points_gagnes += points(x) 
end

def j1_gagne_x_fois(x)
	for x in donne_points(x)
	  x
	end
end
def j2_gagne_x_fois(x)
	for x in donne_points(x)
	  x
	end
end

def sequence_jeu
	sequence = {
		1 => j1_gagne_x_fois(1),
		2 => j2_gagne_x_fois(3)
	} 
	  puts sequence[2]
end
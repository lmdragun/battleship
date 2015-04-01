class Turn
	attr_accessor :turn

	ship1 = ["A1", "A2", "A3", "A4", "A5"]
	ship2 = ["J11", "K11", "L11", "M11", "N11" ]
	ship_positions = []
	ship_positions << [ship1, ship2]
	attempts = []

	def initialize turn
		@turn = turn
		attempts << @turn
		if attempts.count > 20
			puts "You're out of turns!"
		elsif attempts.include?(turn) == true
			puts "You've already tried that!"
		elsif @turn == ship_positions
			puts "Hit!"
			hit += 1
			if hit == 10
				puts "You sunk both battleships!"
			end
		elsif @turn != ship_positions
			puts "Nothing! Try again!"
		end
	end
end

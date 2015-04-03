require_relative 'db'
require_relative 'methods'
require 'pry'

puts "Let's play Battleship!\n"

while true
	puts "Enter 1 to play a NEW game."
	puts "Enter 2 to LOAD an old game."
	puts "Enter 3 to see your score and hits."
	puts "Enter 4 to delete an old game."
	puts "Enter 5 to quit."
	user_input = gets().chomp().to_i

	case user_input
		when 1
			game = Game.create
			puts "There are two battleships lurking on the board, you have to take them both out to win!"
			puts "What is your player name?"
			user_input = gets().chomp()
			player = game.players.create(name: user_input) ##how to make this go into THAT game above?

				#These arrays bring out the random ships random ships
			ship1 = random_array_ship.first.first
			ship2 = random_array_ship.last.first
				#These save the ship locations in the database
			game.ships.create(location: ship1)
			game.ships.create(location: ship2)
			ship1_hits = []
			ship2_hits = []
			attempts = []

				#the game starts
			loop do
				puts board
				puts "Type in the location on the board you would like to attack. Example: A1."
				puts "Or type Quit to exit."
				turn = gets().chomp().upcase

					if attempts.include?(turn) == true
						puts "You've already tried that!"
						sleep(1)
					elsif turn == "QUIT"
						break
					elsif ship1.include?(turn)
						puts "Hit!"
						game.turns.create(hits: true, location: turn)
						ship1_hits << turn
						attempts << turn
						sleep(1)
						if ship1_hits.count == 5
							puts destroy
							if ship1_hits.count == 5 && ship2_hits.count == 5
								puts "You've won!"
								break
							else
								puts "One more ship to go!"
							end
						end
					elsif ship2.include?(turn)
						puts "Hit!"
						game.turns.create(hits: true, location: turn)
						ship2_hits << turn
						attempts << turn
						sleep(1)
						if ship2_hits.count == 5
								puts destroy
							if ship1_hits.count == 5 && ship2_hits.count == 5
								puts "You've won!"
								break
							else
								puts "One more ship to go!"
							end
						end
					elsif turn != ship1.include?(turn) && turn != ship2.include?(turn)
						puts "Nothing! Try again!"
						game.turns.create(hits: false, location: turn)
						attempts << turn
					end
			end
		when 2
			all_game = Game.list_all_games
			game = Game.load_game
			#turn game above into a method, populate with arrays created from the strings of ActiveRecord table information on hits and ships
		when 3
		when 4
		when 5
			puts "Goodbye!"
			break
		else
			puts "That is not a valid choice."
		end
	end

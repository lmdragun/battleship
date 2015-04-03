require_relative 'db'
require_relative 'methods'
require 'pry'

puts
puts "\e[4;1;31mLet's play Battleship!\e[0m\n"
puts

while true
	menu
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
						sleep(2)
						system("clear")
					elsif turn == "QUIT"
						break
					elsif ship1.include?(turn)
						puts "Hit!"
						game.turns.create(hits: true, location: turn)
						ship1_hits << turn
						attempts << turn
						sleep(2)
						system("clear")
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
						sleep(2)
						system("clear")
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
						sleep(2)
						system("clear")
					end
			end
		when 2
			all_game = Game.list_all_games
			game = Game.load_game
			#turn game above into a method, populate with arrays created from the strings of ActiveRecord table information on hits and ships
		when 3
			all_game = Game.list_all_games
		when 4
		when 5
			puts "Goodbye!"
			break
		else
			puts "That is not a valid choice."
		end
	end

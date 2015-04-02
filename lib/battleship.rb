require_relative 'db'
require_relative 'player'
require_relative 'game'
require_relative 'ship'
require_relative 'methods'
require 'pry'

puts "Let's play Battleship!\n"

while true
	puts "Enter 1 to play a NEW game."
	puts "Enter 2 to LOAD an old game."
	puts "Enter 3 to see past high scores."
	puts "Enter 4 to delete an old game."
	puts "Enter 5 to quit."
	user_input = gets().chomp().to_i


	case user_input
		when 1
			puts "There are two battleships lurking on the board,/n you have to take them both out to win!"
			puts "What is your player name?"
			player = Player.new(gets.chomp.to_s)

			ship1 = ["A1", "A2", "A3", "A4", "A5"]
			ship2 = ["J11", "K11", "L11", "M11", "N11" ]
			ship1_hits = []
			ship2_hits = []
			attempts = []
			hit = 0

			loop do
				puts board
				puts "Type in the location on the board you would like to attack. Example: A1"
				turn = gets().chomp().upcase.to_s

					if attempts.include?(turn) == true
						puts "You've already tried that!"
					elsif ship1.include?(turn)
						puts "Hit!"
						ship1_hits << turn
						attempts << turn
						puts attempts
						if ship1_hits.count == 5
							puts "You sunk my battleship!"

							puts "( ~ )( ~ )"
							puts "~o~o~o~"
							puts "--   --"
							puts "|\\ / |"
							puts "| | | |"
							puts "| | | |"
							puts "( )  --"
						end
					elsif ship2.include?(turn)
						puts "Hit!"
						ship2_hits << turn
						attempts << turn
						if ship2_hits.count == 5
							puts "You sunk my battleship!"
						end
					elsif turn != ship1.include?(turn) && turn != ship2.include?(turn)
						puts "Nothing! Try again!"

					end
			end

		when 2
			list_all_players
			list_all_games

		when 3
		when 4
		when 5
			puts "Goodbye!"
			break
		else
			puts "That is not a valid choice."
		end
	end
binding.pry

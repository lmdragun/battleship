# class Player < ActiveRecord::Base
#   has_many :games
#   validates :name, :presence => true
# end
#
#
# class Game < ActiveRecord::Base
#   belongs_to :player
# 	has_many :ships
#   validates :timestamp, :turns, :presence => true
# end
#
#
# class Ship < ActiveRecord::Base
#   belongs_to :player, dependent: :destroy
#   validates :number, :location, :presence => true
#
# end




def list_all_games
	puts "What is your player name?"
		player_name = gets().chomp().capitalize
		puts Player.find_all_by_name "#{player_name}"
end

def board
			@x = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O"]
			@y = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
			@xy = @x.product(@y)
			@board = @xy.map! {|xy| xy.join("")}

			puts @board[0..14].join(" ")
			puts @board[15..29].join(" ")
			puts @board[30..44].join(" ")
			puts @board[45..59].join(" ")
			puts @board[60..74].join(" ")
			puts @board[75..89].join(" ")
			puts @board[90..104].join(" ")
			puts @board[105..119].join(" ")
			puts @board[120..134].join(" ")
			puts @board[135..149].join(" ")
			puts @board[150..164].join(" ")
			puts @board[165..179].join(" ")
			puts @board[180..194].join(" ")
			puts @board[195..209].join(" ")
			puts @board[210..224].join(" ")
	end

def random_array_ship
	ship_arrays = []
	ship_arrays << ["A1", "A2", "A3", "A4", "A5"]
	ship_arrays << ["G11", "H11", "I11", "J11", "K11"]
	ship_arrays << ["O6", "O7", "O8", "O9", "O10"]
	ship_arrays << ["O4", "N4", "M4", "L4", "K4"]
	ship_arrays << ["B15", "B14", "B13", "B12", "B11"]
	ship_arrays << ["D9", "E9", "F9", "G9", "H9"]
	ship_arrays << ["K5", "K6", "K7", "K8", "K9"]
	ship_arrays << ["C4", "C5", "C6", "C7", "C8"]
	ship_arrays << ["J2", "J3", "J4", "J5", "J6"]
	ship_arrays << ["B3", "C3", "D3", "E3", "F3"]
	ship_1 = ship_arrays.sample(1)
	ship_2 = ship_arrays.sample(1)
		while ship_2 == ship_1
			ship_2.replace(ship_arrays.sample(1))
		end
		return [ship_1, ship_2]
end

def destroy
	puts "\e[31m You sunk my battleship!\e[0m"
	puts "\e[31m _~-~-~-~-~_\e[0m"
	puts "\e[31m/           \\\e[0m"
	puts "\e[31m(            )\e[0m"
	puts "\e[31m -          -\e[0m"
	puts "\e[31m  (        )\e[0m"
	puts " \e[31m   |    |\e[0m"
	puts "\e[31m      /X\\\e[0m"
	puts "\e[31mc----/   \\------>\e[0m"
end

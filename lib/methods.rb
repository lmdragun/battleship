def list_all_players
	Player.all each do |p|
		puts "Saved player: #{p.name}"
	end
end

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

def random_ship
	ship_start = board.sample(1)
	ship_length = 5
	
end

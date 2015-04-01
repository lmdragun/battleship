@x = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O"]
@y = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
@xy = @x.product(@y)
@board = @xy.map! {|xy| xy.join("")}

# print @board.slice(0..9)
# puts
# print @board.slice(10..19)
# puts

#printing out board with grid locations in each cell
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

puts "What cell would you like to hit?"
turn = gets().chomp().to_s

if
	@board.include?(turn)
	p true
	#testing to make sure that this will work for future use

end

##trying to change location in array to register a hit ("X")
	# cell = @board.index{|x|x==turn}
	# puts cell
	# @board.map! { |e| e == cell ? "X" : e }
	# puts @board[0..14].join(" ")

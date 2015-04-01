class Board
	attr_accessor :grid, :board

	#creates array with grid locations (like "A1")
	def initialize
		@x = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O"]
		@y = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
		@xy = @x.product(@y)
		@board = @xy.map! {|xy| xy.join("")}
	end

# print @board.slice(0..9)
# puts
# print @board.slice(10..19)
# puts

#puts out array in grid format for the user to see
	def grid
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

end
#

#
# def print_results
#  board_layout = Array.new(10, "░").map{|row| Array.new(10, "░")}
#  row_label = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
#  column_label = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
#
# # p board_layout[2][5]
#
# print "\t"
# print row_label.join("\t")
# puts
# board_layout.each_with_index do |row, i|
#   print column_label[i]
#   print "\t"
#   puts row.join("\t")
#   puts
#  end
# end
#
# print_results

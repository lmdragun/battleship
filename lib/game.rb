require_relative 'grid'

class Player
	attr_accessor :name

	def initialize name
		@name = name
	end
end

puts "What is your username?"
player = Player.new(gets().chomp().to_s)

puts "Select 1 to play, select 2 to quit"
play = gets().chomp().to_i

case user_input

while 1
	puts "There are two battleships lurking on the board, you have to take them both out to win!"
	puts :grid
	puts "Type in the location you would like to attack. Example: A1"
	turn = gets().chomp().upcase.to_s


	ship1 = ["A1", "A2", "A3", "A4", "A5"]
	ship2 = ["J11", "K11", "L11", "M11", "N11" ]
	ship_positions = []
	ship_positions << ship1
	ship_positions << ship2
	attempts = []
	hit = 0

while attempts.count < 20
		if attempts.include?(turn) == true
			puts "You've already tried that!"
		elsif ship_positions.include?(turn)
			puts "Hit!"
			hit += 1
			if hit == 10
				puts "You sunk my battleships!"
			end
		elsif turn != ship_positions
			puts "Nothing! Try again!"
		end
		attempts << turn
break

while 2
	puts "Loading Old Game"
	break
while 3
		puts "Goodbye!"
		break
end
	# if
	# 	@board.include?(turn)
	# 	p true
		#testing to make sure that this will work for future use
	# end

	##trying to change location in array to register a hit ("X")
		# cell = @board.index{|x|x==turn}
		# puts cell
		# @board.map! { |e| e == cell ? "X" : e }
		# puts @board[0..14].join(" ")

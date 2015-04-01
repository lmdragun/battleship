class Cell

	attr_accessor :status, :ship

	FILL_CHAR = {:open => '░',
			   			 :hit => 'x',
			   			 :miss => 'o'}

	def initialize (status = :open, ship = nil)
		@status = status
		@ship = ship
	end

	def shot
		if @ship && @status != :hit
			@ship
		elsif @status == :hit
			FILL_CHAR[@status]
		elsif @status == :miss
			FILL_CHAR[@status]
	end
	def hit
	@status = :hit
end

def miss
	@status = :miss
end
end

class Ship
	def initialize
		ship1 = (ship1, 5)
		ship2 = (ship2, 5)
	end
end

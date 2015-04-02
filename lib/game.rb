class Game < ActiveRecord::Base
  belongs_to :player
	has_many :ships
  validates :timestamp, :turns, :presence => true

  attr_accessor :ship_1, :ship_2

  def random_array_ship
  	ship_arrays = []
  	ship_arrays << ["A1", "A2", "A3", "A4", "A5"]
  	ship_arrays << ["G11", "H11", "I11", "J11", "K11"]
  	ship_arrays << ["O6", "O7", "O8", "O9", "O10"]
  	ship_arrays << ["O4", "N4", "M4", "L4", "K4"]
  	ship_arrays << ["B15", "B14", "B13", "B12", "B11"]
  	ship_arrays << ["D9", "E9", "F9", "G9", "H9"]
  	ship_arrays << ["K5", "K6", "K7", "K8", "K9"]
  	ship_1 = []
  	ship_1 << ship_arrays.sample(1)
  	ship_2 = []
  	ship_2 << ship_arrays.sample(1)
  		while ship_2 == ship_1
  			ship_2.replace(ship_arrays.sample(1))
  		end
  end

end

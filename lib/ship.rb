class Ship < ActiveRecord::Base
  belongs_to :game
  validates :number, :location, :presence => true

end

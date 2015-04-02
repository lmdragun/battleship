class Game < ActiveRecord::Base
  belongs_to :player
	has_many :ships
  validates :timestamp, :turns, :presence => true
end

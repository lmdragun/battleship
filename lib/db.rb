require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :database => "battleship"
)


# class Player < ActiveRecord::Base
#   has_many :games, :ships
#   validates :name, :presence => true
# end
#
#
# class Game < ActiveRecord::Base
#   belongs_to :player, dependent: :destroy
#   validates :timestamp, :turns, :presence => true
# end
#
#
# class Ship < ActiveRecord::Base
#   belongs_to :player, dependent: :destroy
#   validates :number, :location, :presence => true
#
# end

class Game < ActiveRecord::Base
  has_many :players

  def list_all_games
    Game.all each do |g|
      puts "Saved game: #{g.updated_at}"
    end
  end

end


class Player < ActiveRecord::Base
  belongs_to :game
  validates :name, :presence => true

  def list_all_players
  	Player.all each do |p|
  		puts "Saved player: #{p.name}"
  	end
  end

end



class CreateBattleShip < ActiveRecord::Migration

  def initialize
    track_players
    track_games
    # track_ships
  end

    def track_players
      create_table :players do |column|
        column.belongs_to :game
        column.string :name
        column.integer :wins
      end
    end
    def track_games
      create_table :games do |column|
        # column.belongs_to :player
			  column.timestamps null: false
        column.string :attempts
        column.string :hits
        column.string :location
        column.integer :ships
      end
    end
    # def track_ships
    #   create_table :ships do |column|
    #     column.belongs_to :game
    #     column.string :location
    #     column.integer :number
    #   end
    # end

    def self.wipe #from Robin (much better than the last name btw)
      ActiveRecord::Base.connection.tables.each do |table|
        ActiveRecord::Base.connection.drop_table(table)
      end
    end

end


# binding.pry

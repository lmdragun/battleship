require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :database => "battleship"
  )


class Game < ActiveRecord::Base
  has_many :players
  has_many :ships

  def self.list_all_games
    Game.all.each do |g|
      puts "Saved game: Game ##{g.id}, updated at #{g.updated_at}"
    end
  end
    def self.load_game
      puts "Please put the number that corresponds to the game you'd like to load."
      game_number = gets().chomp().to_i
      puts Game.find(game_number)
      return Game.find(game_number)

    end

end


class Player < ActiveRecord::Base
  belongs_to :game
  validates :name, :presence => true

end

class Ship < ActiveRecord::Base
  belongs_to :game, dependent: :destroy
  validates :location, :presence => true
end


class CreateBattleShip < ActiveRecord::Migration

  def initialize
    track_players
    track_games
    track_ships
  end

  def track_games
    create_table :games do |column|
      column.timestamps null: false
      column.string :attempts
      column.string :hits
    end
  end

    def track_players
      create_table :players do |column|
        column.integer :game_id
        column.references :game
        column.string :name
        column.integer :wins
      end
    end

    def track_ships
      create_table :ships do |column|
        column.integer :game_id
        column.references :game
        column.string :location
      end
    end

    def self.wipe #from Robin (much better than the last name btw)
      ActiveRecord::Base.connection.tables.each do |table|
        ActiveRecord::Base.connection.drop_table(table)
      end
    end

end


# binding.pry

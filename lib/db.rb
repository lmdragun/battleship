require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :database => "battleship"
)

class CreateBattleShip < ActiveRecord::Migration

  def initialize
    create_table :players do |column|
      column.string :name
      column.integer :wins

    end

    create_table :games do |column|
      column.belongs_to :player
			column.timestamps
      column.integer :turns

    end

    create_table :ships do |column|
      column.belongs_to :game
      column.string :location
      column.integer :number

    end
  end
end
# binding.pry

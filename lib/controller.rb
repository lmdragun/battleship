require 'active_record'
require_relative 'db'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :database => "battleship"
)

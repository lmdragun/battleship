require 'spec_helper'
require 'pry'
require 'battleship'

describe Player do
	it "initializes a player" do
		player = Player.new("Player1")
		expect(player.name).to be("Player1")
	end
end

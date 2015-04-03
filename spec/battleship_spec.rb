require 'spec_helper'
require 'pry'
require './lib/battleship'

describe Player do
	it "initializes a player" do
		player = game.players.new(name: "Player1")
		expect(game.players.name).to be("Player1")
	end
end

describe Game do
	it "starts when the player chooses" do

	end
	it "can damage ships" do
		ship1 = ["A1", "A2", "A3", "A4", "A5"]
		turn = "A1"
			expect(turn).to raise_error("hit!")
		end

end

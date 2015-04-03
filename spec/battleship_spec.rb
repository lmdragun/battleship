require 'spec_helper'
require 'pry'
require './lib/battleship'

describe Player do
	it "initializes a player" do
		player = game.players.create(name: "Player1")
		expect(game.players.last.name).to be("Player1")
	end
end

describe Game do
	it "starts when the player chooses" do
		user_input = 1
		expect(user_input).to raise("Type in the location on the board you would like to attack. Example: A1.")
	end
	it "can damage ships" do
		ship1 = ["A1", "A2", "A3", "A4", "A5"]
		turn = "A1"
			expect(turn).to raise("hit!")
		end

end

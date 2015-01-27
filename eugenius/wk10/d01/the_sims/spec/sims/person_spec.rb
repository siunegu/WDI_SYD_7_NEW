require "sims/person"
require "sims/food"

module Sims
	describe Sims::Person do
		let(:person) { Sims::Person.new }

		describe ".walk" do
			it "changes location" do
				# WHEN
				person.walk(4.5)
				person.walk(10)

				# THEN
				expect(person.location).to eq(14.5)
			end
		end

		describe ".eat" do
			let(:food) { Sims::Food.new }

			before(:each) do
				food.weight = 2
			end			

			it "changes hunger" do
				# GIVEN

				# WHEN
				person.hunger = 10

				# THEN
				person.eat(food)
				expect(person.hunger).to eq(8)
			end

			it "changes person weight" do
				person.weight = 50

				person.eat(food)

				expect(person.weight).to eq(52)
			end
		end
 	end
end
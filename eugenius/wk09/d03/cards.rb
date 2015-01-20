require 'pry'
class Cards
	attr_accessor( :values, :suits, :card )  
	
	def initialize
		self.values = [ A, 1, 2, 3, 4, 5, 6, 7, 8, 9, J, Q, K ]
		self.suits = [ Spades, Hearts, Diamonds, Clubs ]	
		@card = []
	end

	def puts_card
		card = []
		# .sample pick from value, if sampled include? in value then...
		value = @values.sample
		suit = @suits.sample
		if @values.include?(value) && @suits.include?(suit)
			values.shift(value)
			card << value
			card << suit
			return card
		end
	
	end
end

class Deck
end


card = Card.new
card.puts_card
# require_relative "./calculator"

# puts "2 plus 2 = #{Calculator.add(2, 2)}"
# puts "5 minus 1 = #{Calculator.subtract(5, 1)}"
# puts "10 times 10 = #{Calculator.multiply(10, 10)}"
# puts "500 divided by 50 = #{Calculator.divide(500, 50)}"

class Calculator
	def self.add(x, y)
		x + y
	end	

	def self.minus(x, y)
		x - y
	end

	def self.multiply(x, y)
		x * y
	end

	def self.divide(x, y)
		x / y
	end
end

puts "2 plus 2 = #{Calculator.add(2, 2)}"

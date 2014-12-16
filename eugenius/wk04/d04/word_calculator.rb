# require_relative "./wordy_calculator"

# puts Calculator.run("2 plus 2")
# #=> 2 plus 2 equals 4

# puts Calculator.run("5 minus 1")
# #=> 5 minus 1 equals 4

# puts Calculator.run("10 times 10")
# #=> 10 times 10 equals 100

# puts Calculator.run("500 divided by 50")
# #=> 500 divided by 50 equals 10

class Calculator
	def self.run(x, operator, y)
		a = x.to_i
		b = y.to_i

		case operator 
			when "plus"
				result = a + b
			when "minus"
				result = a - b
				
			when "times"
				result = a * b
			
			when "divided by"
				result = a / b			
		end

	end
end	

puts "#{x} #{operator} #{y} is #{result}"
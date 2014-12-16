class Calculator
	def self.run(equation)
		equation_parts = equation.split(" ")
		first_number = equation_parts.shift
		last_number = equation_parts.pop	
		operation = equation_parts.join(" ")	

		case operation
		when "add"
			result = first_number.to_i + second_number
		when "minus"



	end
end
require 'pry'
class Array
	def triangle
		return "Triangle can't exist" unless self.length == 3

		case self.uniq.length
			when 1
				'Equilateral'
			when 2 
				'Isosceles'
			when 3 
				'Scalene'
		end

	end
end
binding.pry
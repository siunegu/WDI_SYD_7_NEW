# Triangle
# Create a method so if you call .triangle on 3 numbers, the result will tell you if a triangle is equilateral, isosceles, or scalene.

# eg

# [3,3,5].triangle = "isoceles"
# The program should raise an error if the triangle cannot exist.


class Shape
	
	def triangle(x, y ,z)
		if x == y == z
			puts 'equilateral'
		elsif (x == y && ((x || y) == z)) 

		elsif  
			puts 'scalene'
		else
			'not a triangle'
		end
	end

end
describe("Calculator", function() {
	describe(".performOperation", function() {
		//Here we define var calc; but we don't assign it,
		//as we want calc to be available throughout the function.
		var calc;
		//now we assign the calc a function with the beforeEach.
		beforeEach(function() {
			calc = new Calculator();
		});

		it("performs addition of two numbers", function() {
			var result = calc.performOperation("add", 2, 3);
			expect(result).toBe(5);	
		});

		it("performs subtraction of two numbers", function() {
			var result = calc.performOperation("subtract", 3, 2);
			expect(result).toBe(1);
		});

		it("performs multiplication of two numbers", function() {
			var result = calc.performOperation("multiply", 4, 2);
			expect(result).toBe(8);
		});

		it("performs division of two numbers", function() {
			var result = calc.performOperation("divide", 4, 2);
			expect(result).toBe(2);
		});
	});
});
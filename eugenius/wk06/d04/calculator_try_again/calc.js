document.getElementById("calc_form").onsubmit = function() {
	var firstNumber = parseInt(document.getElementById("first_number").value);
	var secondNumber = parseInt(document.getElementById("second_number").value);
	var operator = document.getElementById("operation").value;
	calculate(firstNumber, secondNumber, operator);
	document.getElementById("result").innerHTML = result;
}

var calculate = function(firstNumber, secondNumber, operator) { 
	switch (operator) {
		case "add":
			result = (firstNumber + secondNumber);
			break;
		case "subtract":
			result = (firstNumber - secondNumber);
			break;
		case "multiply":
			result = (firstNumber * secondNumber);
			break;
		case "divide":
			result = (firstNumber / secondNumber);
			break;			
	}
}
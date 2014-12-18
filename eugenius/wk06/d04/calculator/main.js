var calculate = function(n1, op, n2) {
	switch (op) {
		case "add":
		  document.getElementById("answer").innerHTML = (parseInt(n1) + parseInt(n2));
		  break;
		case "subtract":
			document.getElementById("answer").innerHTML = (parseInt(n1) - parseInt(n2));
			break;
		case "multiply":
			document.getElementById("answer").innerHTML = (parseInt(n1) * parseInt(n2));
			break;
		case "divide":
			document.getElementById("answer").innerHTML = (parseInt(n1) / parseInt(n2));
			break;
	}
}

document.getElementById("form").onsubmit = function() {
		n1 = document.getElementById("number_one").value;
		n2 = document.getElementById("number_two").value;
		op = document.getElementById("operation").value;
		calculate(n1, op, n2);
}


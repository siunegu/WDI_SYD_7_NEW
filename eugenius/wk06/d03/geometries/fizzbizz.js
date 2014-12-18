// Morning Exercise: Build "FizzBuzz"
// Count from 1 to 100 replacing every number divisible by 3 with "Fizz" 
// and every number divisible by 5 with "Buzz" and all numbers divisible by both with "FizzBuzz".

var counter = 0
while (counter < 100) {
	counter += 1;
	if (counter % 3 === 0;) {
		console.log("FIZZ");
		// str.replace(counter, Fizz);
		// alert(counter);
		// counter += 1;	
	} else if (counter % 5 === 0;) {
		console.log("BUZZ");
		// counter += 1;
	} else (counter % 5 === 0 && counter & 3 === 0) {
		console.log("FIZZBUZZ");
	}
}

//We are counting form 1 to 100 with a recursive function.
function fizzBuzz (n) {
	console.log (n);
	//Whenever you do a recursive funciton, 	
	//Calling it should be the last thing you do.
	if (n != 100) {
		fizzBuzz (n += 1);
	}
}

fizzBuzz (1);


//We put the console.log in the beginning because it completes
// the console.log, then goes to the next one - with the if loop.
// So we would have to wait for the subsequent function to finish
// before we can run the code underneath. 
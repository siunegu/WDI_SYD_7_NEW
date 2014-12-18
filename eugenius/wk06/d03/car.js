var car = {
	name: "Bessy",
	drive: function() {
		console.log(this.name + " is driving");
	}
}

car.drive();
//=> Bessy is driving
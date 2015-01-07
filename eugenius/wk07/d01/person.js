var Person = function(attributes) {
	this.name = attributes.name;
	this.age = attributes.age;
	this.gender = attributes.gender;
	this.damage = attributes.damage;
};

Person.prototype.speak = function() {
	console.log(this.name + " says 'Hello World'");
}

Person.prototype.walk = function() {
	console.log(this.name + " took one step");
}

Person.prototype.attack = function() {
	console.log(this.name + " attacked for " + this.damage + " damage!")
}

var kim = new Person({
	name: "Kim Jong Un",
	age: 21,
	gender: "Male",
	damage: 99 
});
kim.speak(); // Kim says Hello World
kim.walk(); // Kim took one step
kim.attack(); // Kim attacked for 99 damage!
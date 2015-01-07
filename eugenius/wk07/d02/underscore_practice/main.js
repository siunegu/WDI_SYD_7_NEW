// window.onload = function() {
// 	// Here I want to make a template, render it, then set it to be the html in the container.
// 	var templateString = _.unescape(document.getElementById("hello-template").innerHTML);
// 	// "<p>Hello <%= name %></p>"

// 	var helloWorldTemplate = _.template(templateString);
// 	var theHTML = helloWorldTemplate({ name: "Eugene" });
// 	// <p>Hello <%= Eugene %></p>

// 	var moreHTML = helloWorldTemplate({ name: "Freddy" });
// 	// <p>Hello <%= Freddy %></p>

// 	document.getElementById("container").innerHTML = theHTML + moreHTML;
// }


var Todo = function(text) {
	this["text"] = text;
	this["createdAt"] = new Date();
}

window.onload = function() {
	var todos = [
		new Todo( "Do the dishes" ),
		new Todo( "Hang out the washing" ),
		new Todo( "Learn Javascript (also known as Java)" )
	];

	var templateString = _.unescape(document.getElementById("todo-template").innerHTML);

	var todoTemplate = _.template(templateString);
	
	_.each(todos, function(todo) {
		document.getElementById("container").innerHTML += todoTemplate(todo);
	});
		
}
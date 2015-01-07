// Start the App
var todoApp;

window.onload = function() {
	todoApp = new TodoApp();
	todoApp.start();
}

// var todoList;

// var createTodoElement = function(todo) {
// 	var el = document.createElement("div");
// 	el.className = "todo-item";
	
// 	var todoTextElement = document.createElement("p");
// 	todoTextElement.innerHTML = todo.text;

// 	var todoInfoElement = document.createElement("span");
// 	todoInfoElement.innerHTML = "Created at: " + todo.createdAt.toLocaleString();

// 	el.appendChild(todoTextElement);
// 	el.appendChild(todoInfoElement);

// 	return el;
// };

// var render = function(todoList) {
// 	var todoListElement = document.getElementById("todo-list");	

// 	for( i = 0; i < todoList.length; i++ ) {
// 		var todoElement = createTodoElement(todoList[i]);
// 		todoListElement.appendChild(todoElement);
// 	}
// };

// window.onload = function() {
// 	//Create list of dummy 'to dos' and load them on the page:
// 	todoList = [
// 		new Todo({ text: "Do the dishes" }),
// 		new Todo({ text: "Hang out the washing" }),
// 		new Todo({ text: "Learn Javascript" })
// 	];

// 	render(todoList);
// };


// CONSTRUCTOR
var TodoApp = function() {
	//Create list of dummy 'to dos' and load them on the page:
	this.todos = [
		new Todo({ text: "Do the dishes" }),
		new Todo({ text: "Hang out the washing" }),
		new Todo({ text: "Learn Javascript" })
	];	
}

// Start Method
TodoApp.prototype.start = function() {
	var todoListView = new TodoListView();
	todoListView.container = document.getElementById( "todo-list" );	
	todoListView.render( this.todos );
}
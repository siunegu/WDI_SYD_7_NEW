// CONSTRUCTOR
var TodoListView = function() {};

TodoListView.prototype.render = function( todos ) {
	for( i = 0; i < todos.length; i++ ) {
		var oneDo = todos[i];
		var todoView = new TodoView( oneDo );
		var todoViewElement = todoView.render();
		this.container.appendChild( todoViewElement );
	}	
};
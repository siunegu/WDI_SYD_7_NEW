// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(function() {
	$("#add-todo").on("submit", function() {
		var text = $("#todo-text").val();
		var notes = $("#todo-notes").val();
		var completed = $("#todo-completed").prop("checked");

		$(function() {
			$("body").on("click", ".todo", function() {
				$.getJSON()
			});

			$.getJSON("/todos", function(data) {
				$.each(todos, function(index, todo) { // For each todo, get the index of it, and then the todo
					$("body").append("<p data-id=\"" + todo.id + "\" class=\"todo\">" + todo.text + "</p>");
				});
			});
		});		

		// $.ajax({
		// 	url: "/todos",
		// 	data: {
		// 		todo: {
		// 			text: "Do the dishes",
		// 			notes: "Get liquid",
		// 			completed: false
		// 		}
		// 	},
		// 	method: "POST",
		// 	type: "json",
		// 	success: function(data) {
		// 		// do some stuff
		// 		console.log(data);
		// 	},
		// 	failure: funciton(data) {}
		// });

	// 	$.post("/todos/2",
	// 		{ todo:
	// 			{ text: text,
	// 				notes: notes,
	// 				completed: completed },
	// 				_method: "PATCH" 
	// 			}, // Above: This is what is sent to the server. Below: This is what gets sent back, in 'data'
	// 			function(data) {
	// 				console.log(data);
	// 				$("body").append("<p>" + data.text + "</p>")
	// 			},
	// 			"json");

	// 	event.preventDefault();
	// });



});
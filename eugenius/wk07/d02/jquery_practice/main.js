$(function() {
	// $("#container").click( function() {
	// 	$("#container").fadeOut();
	// });

	$("#todo").on("keypress", function( event ) {
		// If this event is keystroke no.13, && this value is not an empty string...
		if( event.which === 13 && $(this).val() !== "" ) {
			var todoText = $(this).val();

			var $todo = $("<p><span>" + todoText + "</span><input type=\"text\"><button>x</button></p>");
			$("#todo-list").append( $todo );
			$todo.find("input").hide();
			$todo.hide().slideDown("fast");
			// if 'this' is an input field or anything that is entered, it is val();			
			$(this).val("");
		}
	});

	// Listens for an event somewhere inside the 'todo list' 
	$("#todo-list").on("keypress", "p input", function( event ) {
		if( event.which === 13 && $(this).val() !== "" ) {
			var editedText = $(this).hide().val();
			$(this).parent().find("span").show().text( editedText );			
		}		
	});

	
	$("#todo-list").on("dblclick", "p", function() {
		var todoText = $(this).find("span").hide().text();
		$(this).find("input").show().val( todoText );
	});

	// Remove on clicking the button inside the p tag
	$("#todo-list").on("click", "p button", function() {
		$(this).parent().slideUp( 300, function() {
			$(this).remove();
		});	
	});

	// JQUERY VERSION
	// $("#click-me").on("click", function() {
	// 	$("#put-text-here").text("Hello World!");
	// });
	// PLAIN JS VERSION
  // document.getElementById("click-me").onclick = function() {}	
});


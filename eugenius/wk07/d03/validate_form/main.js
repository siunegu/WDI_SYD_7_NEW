
// $(function() {});  is the same document.ready and window.onload
$(function() {
	var validate = function( value, selector ) {
		if( value === "" ) {
			$(selector).siblings("span").text("required");
		} else {
			$(selector).siblings("span").text("");
		}
	};	
  // listen for the submit event on the form
  // if there isn't at least 1 character in a field
  // show an error in the span next to that field in the HTML
  $("#the-form").on("submit", function( event ) {
  	var firstNameValue = $("#user_first_name").val();
  	var lastNameValue = $("#user_last_name").val();

  	var firstValid = validate( firstNameValue, "#user_first_name" );
  	var lastValid = validate( lastNameValue, "#user_last_name" );
  	// Prevents the form from actually submitting an HTTP request.
  	if ( !firstValid && !lastValid ) {
  		event.preventDefault();
  	}

  });
});
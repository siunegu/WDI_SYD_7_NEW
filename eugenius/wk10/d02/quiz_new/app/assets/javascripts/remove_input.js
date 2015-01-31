$(function(){
	$('#sort-button').on('click', function(event){

		 var inputText = $('#number-input').text();

		 $('#number-input').remove();
		 $(this).remove();
		 inputText.sort();

		 event.preventDefault();
	});
});
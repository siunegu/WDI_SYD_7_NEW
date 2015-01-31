$(function() {
	$('#comp-sigh').on('click', function(){
		$('h1').html('Comp-Sigh');
		$("body").addClass('pink');
		$(this).prop('disabled', true);
	});
})
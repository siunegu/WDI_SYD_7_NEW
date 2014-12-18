$(function() {
	$("#show_me").on('click', function () {
		$("#green_square").toggleClass("green", 2000).toggle(100);
		$("#green_square").toggleClass("red", 2000);
	});
});
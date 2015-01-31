$(function(){
	$('ul#items li').on('click', function(){
		$(this).find('p').slideToggle();
	}); 
});



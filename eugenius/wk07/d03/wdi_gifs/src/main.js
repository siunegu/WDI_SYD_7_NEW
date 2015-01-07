// var tags;

var renderNavigation = function(tags) {
	// var letters = ["A", "B", "C", "D", "E", "F", "G", "K", "L", "M", "N", "O", "P", "Q", "R", "S" "T", "U", "V", "W", "X", "Y", "Z", "#"];
	var letters = "abcdefghijklmnopqrstuvwxyz#".split("");
	var navigation = "";

	_.each(letters, function(letter) {
		navigation += "<a>" + letter + "</a>";
	});

	$("nav").html( navigation );
};

var renderTagList = function(tags) {
	// Go through each of things in this array, and append it to the DOM;
	var listString = "";

	_.each(tags, function(tag) {
		if( tag.length > 0 ) {
			listString += "<div class=\"tag\">" + tag + "</div>";			
		}
	});
	// Render the space in the #content with listString;
	$("#content").html( listString );	
};

var renderGifList = function(listGif) {
	// console.log(listGif);
	$("#content").html("");
	_.each(listGif.gifs, function (eachGif) {
		// console.log(eachGif.url);
		var content = "<img src=" + eachGif.url + " />";
		$("#content").append(content);
	});
	// _.each(listGif, function(data) {
		// console.log(data);
		// $("#content").html("<img src=" + data.gifs.data.url + " />");		
	// });
};

$(function() {
	$("#container").on("click", "nav a", function() {
		var self = this;
		var filteredTags = _.filter(tags, function(tag) {
			return $(self).text() === tag[0];
		});

		renderTagList( filteredTags );
	});

  $("#content").on("click", ".tag", function() {
    var tag = $(this).text();
    $.getJSON("http://www.gifbase.com/tag/" + tag + "?format=json", function(data) {
	    console.log(data);
	    renderGifList(data);
	    // _.each( renge)
	    // $("#content").html("<img src=" + data.gifs[0].url + " />");
    });
  });

	$.getJSON( "http://www.gifbase.com/js/tags.json", function(data) {
		// debugger;
		// var tags = data;
		renderTagList(data);
		renderNavigation(data);
	});
});
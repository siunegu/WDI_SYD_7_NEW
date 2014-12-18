var fadeOut = function(element) {
  var opacity = 1;

  var fadePart = function() {
    opacity -= 0.005;
    element.setAttribute("style", "opacity: " + opacity + ";");

    console.log("test");

    if (opacity > 0) {
      setTimeout(fadePart, 10);
    }
  }

  fadePart();
}

var h1 = document.getElementById("home_header");
h1.onclick = function() {
  fadeOut(h1);
}

// document.body.onclick = function() {
// 	alert("Body clicked");
// }

// document.forms[0].onsubmit = function() {
// 	var theForm = document.forms[0];
// 	var nameField = document.getElementById("name");
// 	var emailField = document.getElementById("email");	

// 	validatesPresence(nameField);
// 	validatesPresence(emailField);
// }

// var validatesPresence = function(formField) {
// 	if (formField.value.length === 0) {
// 		formField.setAttribute("style", "border: 1px solid red;");
// 	} else {
// 		formField.setAttribute("style", "border: 1px solid black;");
// 	}
// }
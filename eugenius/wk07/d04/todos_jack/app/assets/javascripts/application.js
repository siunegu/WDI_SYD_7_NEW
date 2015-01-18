// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
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

    $("#add-todo").on("keypress", function(event){
        if (event.keyCode === 13 && $(this).val() !== "")  {
            $.ajax({
                method: "POST",
                url: "/todos",
                dataType: "json", 
                data: {
                    todo: {
                        text: $(this).val()
                    }
                },
                success: function(todo) {
                    $("body").append("<p data-id=\""+ todo.id +"\" class=\"todo\"><span>" + todo.text + "</span><button>Delete</button></p>");
                }
            });
            // Removes the text from the text box after you press enter:
            $("#add-todo").val("");
        }
    });


    $("body").on("click", "button", function(event){

        var removeUrl = "/todos/" + $(this).parent().attr("data-id");
        console.log("it's been clicked");
        var $todo = $(this).parent();
        var thisId = $todo.attr("data-id");
        
        console.log($todo);
        console.log(thisId);
        console.log(removeUrl);

        // We do this .hide(); because in case there's lag, it will be hidden anyway immediately:
        $todo.hide();

        $.ajax({
            method: "POST",
            url: removeUrl,
            dataType: "json", 
            data: { 
                _method: "DELETE" 
            },
            success: function() {
                $todo.remove();        
            },
            error: function() {
              alert("Sorry something went wrong...");
              $todo.show();
            }
        });
        event.stopPropagation();
        event.preventDefault();
    });


    $("body").on("click", ".todo span", function() {
        var todoURL = "/todos/" + $(this).attr("data-id");
        var self = this;
        // debugger;
        console.log("test");
        $.getJSON(todoURL, function(todo) {
            
            $(self).append("<div>" + todo.notes + "</div>");
        });
    });

    // On Refresh you put it back to the page:
    $.getJSON("/todos", function(todos) {
        $.each(todos, function(index, todo) {
            $("body").append("<p data-id=\""+ todo.id +"\" class=\"todo\"><span>" + todo.text + "</span><button>Delete</button></p>");
        });
    });
});

// $(function() {
//   $("body").on("click", ".todo span", function( event ) {
//     var todoID = $(this).parent().attr("data-id");
//     // var $todo = $todo.pareattr("data-id");

//     $.ajax({
//       method: "POST",
//       url: "/todos/" + todoID,
//       dataType: "json",
//       data: {
//         _method: "DELETE"
//       },
//       complete: function() {
//         $todo.remove();
//       }
//     });
//   });

//   $("#add-todo").on("keypress", function( event ) {
//     if (event.keyCode === 13 && $(this).val() !== "") {
//       $.ajax({
//         method: "POST",
//         url: "/todos",
//         dataType: "json",
//         data: {
//           todo: {
//             text: $(this).val()
//           }
//         },
//         success: function(todo) {
//           $("body").append("<p data-id=\"" + todo.id + "\" class=\"todo\"><span>" + todo.text + "</span><button> Delete </button></p>");
//         }
//       });
//     }
//   });

//   $("body").on("click", "button", function() {
//     var todoURL = "/todos/" + $(this).attr("data-id");
//     // "/todos/11"
//     console.log(todoURL);

//     var self = this;

//     $.getJSON(todoURL, function(todo) {
//       $(self).append("<div>" + todo.notes + "</div>");
//     });
//   });

//   $.getJSON("/todos", function(todos) {
//     $.each(todos, function(index, todo) {
//       $("body").append("<p data-id=\"" + todo.id + "\" class=\"todo\">" + todo.text + "</p>");
//     });
//   });
// });


// ---- Previous commented out ----

// $(function() {

//     $("#add-todo").on("submit", function(event) {
//         event.preventDefault();
//         var text = $("#todo-text").val();
//         var notes = $("#todo-notes").val();
//         var completed = $("#todo-completed").prop("checked");


//     $.ajax({
//         url: "/todos/1",
//         method: "POST",
//         dataType: "json",
//         data: {
//             todo: {
//                 text: text,
//                 notes: notes,
//                 completed: completed
//             },
//             _method: "PATCH"
//         },

//         success: function(data) {
//             console.log(data);
//         },
//         failure: function(data) {

//         }
//     })    

//         // $.post("/todos/2", 
//         //     { todo: 
//         //      { text: text, 
//         //        notes: notes, 
//         //        completed: completed },
//         //        _method: "PATCH"
//         //   }, 
//         //   function(data) {
//         //   },
//         //   "json");


//     });
// });

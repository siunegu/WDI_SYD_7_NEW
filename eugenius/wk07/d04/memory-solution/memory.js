//Global Variables

//Time that increments in the game
var timerId = 0,
    time = 0;

//arrays with letters in them.
var lettersSmall  = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E'],
    lettersMedium = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E',
                     'F', 'F', 'G', 'G', 'H', 'H', 'I', 'I', 'J', 'J'],
    lettersLarge  = ['A', 'A', 'B', 'B', 'C', 'C', 'D', 'D', 'E', 'E',
                     'F', 'F', 'G', 'G', 'H', 'H', 'I', 'I', 'J', 'J',
                     'K', 'K', 'L', 'L', 'M', 'M', 'N', 'N', 'O', 'O',
                     'P', 'P', 'Q', 'Q', 'R', 'R', 'S', 'S', 'T', 'T'];

//array of letters. will change based on size of game.
var letters;

//last card/letter you clicked on. comes from the letter divs.
var lastId = '',
    lastCard = '';

//Code In Here gets executed once code is ready. ie hovering, clicking events//
$(function() {
  //attach a click function to the inputs to call startGame.
  $('input').click(startGame);

  //bind hover and click functions to divs, even ones that don't exist yet.
  $('#game').on('hover', 'div.column', hovering);
  $('#game').on('click', 'div.column', cardClick);
  /*
    // Alternate way of applying mulitple event bindings to the same element with .on
    $('#game').on({
      hover: hovering,
      click: cardClick
    }, 'div.column')
  */
});

function startGame() {
  //take the ID from the button clicked.
  switch($(this).attr('id')) {
    //customize game based on button choice
    case "small":
      letters = lettersSmall;
    break;
    case "medium":
      letters = lettersMedium;
    break;
    case "large":
      letters = lettersLarge;
    break;
  }
  //shuffle letters
  letters = _.shuffle(letters);
  //call the timer function
  startTime();
  //clear the board
  var $game = $('#game');
  $game.html('');
  // make a loop to create the rows
  for (var i = 0; i < letters.length; i++) {
    $game.append('<div id="' + i + '" class="column"></div>');
  };
  //clear some variables
  lastId = '';
  lastCard = '';
}

function cardClick() {
  var $this = $(this);
  //get the card's id.
  var cardId = $this.attr('id');

  //parse the cardId and enter it into the letter array to get the card's letter.
  var card = letters[parseInt(cardId)];
  var lastCard = letters[parseInt(lastId)];

  //change the card's text to display the letter
  $this.text(card);

  // Cache our selectors
  var $card = $('#' + cardId);
  var $lastCard = $('#' + lastId);
  // Make sure you didn't click the same card twice first
  if(cardId === lastId) {
    $lastCard.text('');
    lastId = '';
  } else {
    // If there is a match...
    if(lastCard === card) {
      //add the found class
      $card.addClass('found');
      $lastCard.addClass('found');

      //remove their ids so we can't click on them anymore.
      $card.attr('id', '');
      $lastCard.attr('id', '');

      //check if we've won
      if($(".found").length === letters.length) {
        $('div.column').addClass('won');
        clearInterval(timerId);
      }
    } else {
      // If there's no match
      $lastCard.text('');
      lastId = cardId;
    }
  }
}

//Add hoverclass to cards.
function hovering() {
  $(this).toggleClass('hover');
}

//Start the timer
function startTime() {
  time = 0;
  clearInterval(timerId);
  timerId = setInterval(updateTime, 1000);
}

//Increment the timer and display the new time
function updateTime() {
  time++;
  $('#timer').text('Game time: ' + time);
}
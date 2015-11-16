/*
Number matching game

Goal of game is to guess the same number as the computer given 5 turns
Characters: Players, Computer

Guess a number between (1-50):

Object:
  Computer object:
  Generates an integer, gives up to 5 clues based on guess and returns message

  Person object:
  Stores last number entry
  Stores boolean for true or false match
  Stores boolean wants_to_keep_playing?
  Counts number of guesses

Pseud0code:

1) Create a computer object
2) Create a player and ask for name using a prompt
3) Asks user prompt Do you want to keep playing?
Create
IF USER wants to PLAY then create new computer object

DO
DEFINE an object for the computer/dealer
  OBJECT has a random number generated between 1 and 50

  OBJECT has a boolean win/lose tracker set to false

  OBJECT has a RETURN CLUE function
    IF number is HIGHER than random number by more than 30%
      then the CLUE is that WAY Too High
      WIN is set to FALSE
    IF number is HIGHER than random number by less than 30%
      then the CLUE is High
      WIN is set to FALSE
    IF number is equal to random number than
      the player WINS
      WIN is set to TRUE
    IF number is lower than random number by more than 30%
      then the CLUE is that WAY Too LOW
      WIN is set to FALSE
    IF number is lower than random number by less than 30%
      then the CLUE is Low
      WIN is set to FALSE

  DEFINE PLAYER

  DO
  Create computerObj()
  PROMPT for USER Guess INPUT
    IF guess isn't an integer
      PROMPT PLEASE INPUT an integer
    IF guess is > 50 or < 1
      PROMPT PLEASE input integer within range of 1 to 50

  Compare player's number against computer integer
  Calculate difference as Player Number - User Number / User Number
  Feed difference into Object's RETURN CLUE function

  FOR at most 5 times
    IF NOT a WIN and COUNTER is less than 5
      Then PROMPT AGAIN
      Increment counter
    IF WIN OR COUNTER is 5
      THEN PLAY AGAIN?
      counter = 5
  PLAY AGAIN boolean to play a new round
  WHILE PLAY AGAIN = TRUE
*/

function computerObj(){
  this.number = Math.floor((Math.random() * 25)+1);
  this.winTracker = false;
}

computerObj.prototype.clue = function(user_guess) {
    guesstimate = (user_guess - this.number) / this.number * 100;

    if (guesstimate >= 50) {
      return user_guess.toString() + " is WAY too high!";
    }
    else if (guesstimate > 0 && guesstimate < 50) {
      return user_guess.toString() + " is high!";
    }
    else if (guesstimate === 0) {
      this.winTracker = true;
      return user_guess.toString() + " is correct!";
    }
    else if (guesstimate < 0 && guesstimate > -50) {
      return user_guess.toString() + " is low!";
    }
    else if (guesstimate <= -50) {
      return user_guess.toString() + " is WAY too low!";
    }
  }

function player() {
  this.play_again = false;
  this.guess;
}

player.prototype.playAgain = function() {
  to_play_again = prompt("Would you like to play again? Enter Y/N");

  if (to_play_again == "Y") {
    this.play_again = true;
  }
  else {
    this.play_again = false;
  }
}

player.prototype.guessInteger = function() {
  this.guess = prompt("Please guess an integer between 1 and 25.");

    if (this.guess > 25 || this.guess < 1){
      this.guess = prompt("Please try again and make sure your integer is between 1 and 25.");
    }
  }


var newPlayer = new player();


alert("Try to guess the secret number, you get 5 chances! Let's play!");
do {
    var newComputerPlay = new computerObj()
    var chances = 1;

    do {
        newPlayer.guessInteger();
        var clueString = newComputerPlay.clue(newPlayer.guess);

        if ((newComputerPlay.winTracker == false && chances < 4)){
            alert(clueString + " Guess again! You have " + (5 - chances).toString() + " chances left!");
        } else if (newComputerPlay.winTracker == false && chances == 4){
            alert(clueString + " Guess again! You have " + (5 - chances).toString() + " chance left!");
        } else if (newComputerPlay.winTracker == true){
            alert(clueString);
            chances = 5;
        } else if (newComputerPlay.winTracker == false && chances == 5){
            alert("Sorry, the number was "+ newComputerPlay.number + ".");
        }
        chances++;
    } while (chances <=5);

    newPlayer.playAgain();

} while (newPlayer.play_again == true);



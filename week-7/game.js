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
  this.name = "";
  this.play_again = false;
  this.guess;
}

player.prototype.getName = function() {
  this.name = prompt("Please enter your name");
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
newPlayer.getName();

alert("Try to guess the secret number, you get 5 chances! Let's play!");

do {

var chances = 1
var newComputerPlay = new computerObj()


    do {

      newPlayer.guessInteger();
      var clueString = newComputerPlay.clue(newPlayer.guess);
      chances++;

      if (newComputerPlay.winTracker === false && chances < 5) {
        alert(clueString + " Guess again! You have " + (6 - chances).toString() + " chances left!");
        }
      else if (newComputerPlay.winTracker === false && chances = 5) {
        alert(clueString + " Guess again! You have " + (6 - chances).toString() + " chance left!");
        }
      else if (newComputerPlay.winTracker === false && chances = 6){
          alert("Sorry, the number was " + newComputerPlay.number + ".");
        }
      else if {newComputerPlay.winTracker === true){
        alert(clueString);
        chances = 6
        }

    } while (chances <= 6);

 } while (newPlayer.play_again === true);


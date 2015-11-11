// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
/*
var JettsAge = 2
var JettsAgeNextYear = 2 + 1

console.log(JettsAge)
console.log(JettsAgeNextYear)

//Chapter 2
prompt("What's your favourite food?", "");
confirm("Hey, that's my favourite food too!");
// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// FizzBuzz
*/

// empty strings evaluate to false
// if div by 3 then return "fizz", div by 5 then return +"buzz"
for (var number = 1; number <= 100; number +=1){
  var fizzBuzz = "";
  var fizz = "Fizz";
  var buzz = "Buzz";
  number % 3 == 0 ? fizzBuzz+=fizz : number
  number % 5 == 0 ? fizzBuzz+=buzz : number

  console.log(fizzBuzz||number);
}

// Functions

// Complete the `minimum` exercise.
function min (num1, num2) {
  if (num1 <= num2)
    return num1;
  else return num2;
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Sasha",
  age: 29,
  favorite_foods: ["chocolate", "cookies", "sugar"],
  quirk: "Loves dogs obsessively"
};


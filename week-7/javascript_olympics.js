// Bulk Up
/*
Create a function that takes an array of athletes that include a name and event property. (Sarah Hughes (Links to an external site.), for example, could have "Ladies' Singles" as her event). Your function should add a  win property to each athlete in the array. In the example above,  win would print "Sarah Hughes won the Ladies' Singles!"
*/


 function addWin(myarray){
   for (var i in myarray){
     myarray[i].win = myarray[i].name + " won the " + myarray[i].event + "!";
   }
   return myarray;
 }


// Jumble your words

// Create a function that accepts a string as an argument and reverses it. Use the built-in JavaScript methods for strings and arrays to accomplish this. See the MDN String (Links to an external site.) and Array (Links to an external site.) docs. HINT: Think about how you would write this in Ruby and translate!

// Pseudocode:

// function accepts string as argument
// convert string to array
// use array.reverse method
// convert back to string

function stringReverse(string){
  var reverseArray = string.split("");
  reverseArray.reverse();
  return reverseArray.join("");

 }
 console.log(stringReverse("!sdrow ruoy elbmuJ"));


// 2,4,6,8

var myarray = [1,2,3,4,5,6,7];

var filtered = function(myarray){
 function evens(value) {
   return value % 2 == 0;
 }
  return myarray.filter(evens)
}

console.log(filtered(myarray));


// "We built this city"


function Athlete(name, age, sport, quote){
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection
// Function declaration versus function expression

// What JavaScript knowledge did you solidify in this challenge?
// The last exercise helped to clarify how to build a constructor
// function. I was really confused at the function expression versus
// declaration comparison and still don't fully understand that
// concept.

// What are constructor functions?
// The constructor function is a function object with the prototype property. The prototype and a property called constructor, which is set to the function itself. This means that you can use .this in your property declarations. Constructor functions are preferred when multiple instances of an object will be created and when there will be modifications to the object throughout the program. You also need to instantiate an object if it's a constructor, using new (). Literal notation is preferred if there will only be a single instance of the object.

// How are constructors different from Ruby classes (in your research)?

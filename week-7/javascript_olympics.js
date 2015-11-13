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

function filtered(myarray){
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

// What JavaScript knowledge did you solidify in this challenge?
// The last exercise helped to clarify how to build a constructor
// function. I was really confused at the function expression versus
// declaration comparison and still don't fully understand that
// concept.

// What are constructor functions?
// The constructor function is a function object with the prototype property. The prototype and a property called constructor, which is set to the function itself. This means that you can use .this in your property declarations. Constructor functions are preferred when multiple instances of an object will be created and when there will be modifications to the object throughout the program, as it won't affect instances of the object that have already been created. You also need to instantiate an object if it's a constructor, using new (). Literal notation is preferred if there will only be a single instance of the object.

// How are constructors different from Ruby classes (in your research)?
//In constructors, a prototype function is part of the object's
//methods. In Ruby classes, the function is not part of the object's
//methods, but the instance methods. The class itself inherits class
//methods from its parent class.

//Javascript constructors functions can be invoked to create new objects. Javascript acts as a repository of properties that reference other objects, and these properties can be accessed directly on the object. Ruby objects are hashes of instance variables that reference other objects. In Ruby, the instance variables can only be created or altered within the context of the object using a method call. This is called data encapsulation.

// Function declaration versus function expression
// A function declaration has function used in the main code flow,
//and the variable is created pre-execution, so can be called before
//or after the function is defined. A function expression is part of an expression, and is created once execution reaches it so can only be called after creation. Functional expressions are preferred if it is a conditional function.
// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.


var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

// var ballotName = votes["Zane"]["president"];

// voteCount["president"][ballotName] = 1;
// voteCount["president"][ballotName] += 1;


//  The name of each student receiving a vote for an office should become a property
// of the respective office in voteCount.  After Alex's votes have been tallied,
// voteCount would be ...
  // var voteCount =
  //   president: { Bob: 1 },
  //   vicePresident: { Devin: 1 },
  //   secretary: { Gail: 1 },
  //   treasurer: { Kerry: 1 }
  //



/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */

var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}


// Pseudocode

// in votes object, each property is the student's name
    // within the student's name property, four properties that represent each office position
        //each position property's value is the name
// loop through all student names
    // for every name, access office positions for the name being voted for, check if name being voted for exists     as property for the office position
        // add 1 to name
        // else add name as property and give it a value of 1


/*
FOR each position in voteCount, find the name with the highest
votes and assign the highest name to the officers object

FOR each position in voteCount
  maxVotes = 0
  store max name in maxName;

  FOR each name in each position of voteCount
    IF maxVotes is less than voteCount[position][name]
    then maxVotes will equal the new vote total
    maxName will equal name

*/

// __________________________________________
// Initial Solution


for( var names in votes) {
  for (var position in votes[names]) {

    var ballotName = votes[names][position]
    if(voteCount[position].hasOwnProperty(ballotName)) {
      voteCount[position][ballotName] += 1;
    } else {
      voteCount[position][ballotName] = 1;
    }

  }
}


for (var position in voteCount){
  var maxVotes = 0;
  var maxName = "";

  for (var name in voteCount[position]){
    if (maxVotes < voteCount[position][name]){
        maxVotes = voteCount[position][name];
        maxName = name;
      }
    }

  officers[position] = maxName;

}

console.log(officers);

// __________________________________________
// Refactored Solution


for( var names in votes) {
  for (var position in votes[names]) {

    var ballotName = votes[names][position]
    if(voteCount[position].hasOwnProperty(ballotName)) {
      voteCount[position][ballotName] += 1;
    } else {
      voteCount[position][ballotName] = 1;
    }

  }
}


for (var position in voteCount){
  var maxVotes = 0;
  var maxName = "";

  for (var name in voteCount[position]){
    if (maxVotes < voteCount[position][name]){
        maxVotes = voteCount[position][name];
        maxName = name;
      }
    }

  officers[position] = maxName;

}



// __________________________________________
// Reflection

//What did you learn about iterating over nested objects in JavaScript?
//
//Reinforced the value of bracket notation vs dot notation for
//iterating through objects in JavaScript.
//
//Were you able to find useful methods to help you with this?
//No, we didn't. I think there would be a more efficient way to
//access the second "level" of the nested objects and flatten that
//level of information, but I haven't been successful in finding a
//good way to refactor our for loops.
//
//What concepts were solidified in the process of working through this challenge?
//We built a very simple iterative solution, but I am better
//understanding how recursion is going to work to replace these
//kinds of loops structures.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
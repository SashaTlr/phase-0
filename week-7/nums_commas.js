// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with Natalie .

// Pseudocode
/*  input: integer
    output: string
*/
/*
Steps:
DEFINE method as a function with an integer argument

IF integer < 1000
  return integer
Otherwise
  CONVERT integer into a string

SPLIT string by single character into an array
REVERSE array

Initialize an empty array

FOR each index in array
  IF index plus 1 is not divisible by 3
    Add digit to new array
  IF index plus 1 is divisible by 3
    Add digit plus "," to new array

REVERSE the order of the new array
JOIN the new array with no separators to create a string

Return the new string
*/
/*
// Initial Solution
function separateComma(num) {
  if (num < 1000) {
    return num;
  }
  var numArray = num.toString().split('').reverse();
  var newArray = [];
  for (var i = 0; i < numArray.length; i++) {
    if ((i + 1) % 3 != 0 || i == numArray.length - 1) {
      newArray.push(numArray[i]);
    }
    else {
      newArray.push(numArray[i], ",");
    }
  }
  return newArray.reverse().join('');
}

console.log(separateComma(1569743))
*/
// Refactored Solution
function separateComma(num) {

  var numArray = num.toString().split('').reverse();

  for (var i = 3; i in numArray; i += 4) {
    numArray.splice(i,0,",");
  }
  return numArray.reverse().join('');
}

console.log(separateComma(1569743))



// Your Own Tests (OPTIONAL)
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (separateComma(1000) === "1,000"),
  "SeparateComma should return 1,000.",
  "1. "
)

assert(
  (separateComma(55) === "55"),
  "SeparateComma should return 55 as a string.",
  "2. "
  )

assert(
  (separateComma(1569743) === "1,569,743"),
  "SeparateComma should return 1,569,743.",
  "3. "
)

assert(
  (separateComma(1569743213) === "1,569,743,213"),
  "SeparateComma should return 1,569,743,213.",
  "4. "
)
// Reflection
//What was it like to approach the problem from the perspective of
//JavaScript? Did you approach the problem differently?
//We did a similar approach in that we turned an integer to string,
//reversed the string, sectioned into 3, and then rejoined and
//reversed back to a string. The difference was that in ruby, there
//is a built-in method that will loop through and split, while in
//JS, we have to create a for loop for each splice.

//What did you learn about iterating over arrays in JavaScript?
//In Javascript, we have to create a loop to iterate over arrays as
//there aren't built in array methods that will do this for us.

//What was different about solving this problem in JavaScript?
//No iterators and to reverse method on strings, only arrays.

//What built-in methods did you find to incorporate in your
//refactored solution?
//We used .splice, .toString, .split, .reverse, and .join.
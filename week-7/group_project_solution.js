// Release 1: Tests to User Stories

/*
As as user, I want to be able to do three things:
(1) I want to be able to take a list of numbers and find their sum.
(2) I want to be able to take a list of numbers and find their mean.
(3) I want to be able to take a list of numbers and find their median.
*/

// Release 2: Pseudocode

/*

INPUT: An array of values
OUTPUT: Three values equaling the initial array's sum, mean , and median
1. SET array of values to List
SUM
  1. SET function to sum, List as arguemt
  2.    SET Total = 0
  3.     LOOP List and collapse each numeric value onto index zero of Total
  4.     UNTIL the full length of List is reached, compute

MEAN
 1. SET function for mean, List as argument
 2.   SET variable mean = Total divided by the List length

MEDIAN
`1. SET function for median, List as an argument
 2.   SORT List from low to high
 3.   SET half = 0
 4.    FOR half
         divide list length by two and round down
 5.   IF list length has a true modululous of 2
        RETURN list[half]
 6.   ELSE increment down the array
*/

// function sum(list){
//  var total = 0;
//  for (var i = 0; i < list.length; i++){
//    total += list[i];
//  }
//  return total;
// }

// function mean(list) {
//  var total = sum(list);
//  var mean = total/list.length;
//  return mean;
// }


// // driver code
// num_array = [1,2,3,4,5,6,7,8,9];
// console.log("total is : " + sum(num_array));
// console.log("mean is : " + mean(num_array));

//Release 4 - Refactored Codes and User stories.

function sum(list){
  var total = 0;
  for (var i = 0; i < list.length; i++){
    total += list[i];
  }
  return total;
}

function mean(list) {
  var total = sum(list);
  var mean = total/list.length;
  return mean;
}

function median(list) {
  list.sort();
  var half = Math.floor(list.length/2);
  if (list.length % 2 != 0){
    return list[half];
  } else {
    return (list[half-1] + list[half])/2.0;
  }
}


// sum: As a user I want to be able to enter in a large list of numbers of figure out what the total of those numbers are.

// mean: As a user I want to be able to figure out what the mean is on any given list of number I have.

// median: As a user I want to be able to find the middle number of a sorted list of numbers.
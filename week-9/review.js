//9.2.1 JavaScript Grocery List

// User Stories
/*
1. User will want to create a new grocery list
2. User will want to be able to add to their grocery list as well as
indicate the quantity of that item
3. User wants to be able to remove items from the list if they
change their mind or have bought it.
4. User will want to change the quantity of an item if they change
their mind about something.
5. User will want to print the list so they can see what to buy.
*/

//Pseudocode
/*
1. Create an empty constructor function named GroceryList which contains no arguments.
2. Create a prototype function that takes a string name and quantity integer as arguments, and adds this to the grocery list.
3. Create a prototype function that takes a string input and  deletes a product in the list by using the delete function on the string
4. Create a prototype function that takes a string and integer input, and updates the value to the integer for the prototype matching the string.
5. Create a prototype function that will print to console the object properties and it's values.
*/

// 1. Create a function for an empty list
var GroceryList = function() {};

// 2. Add item to the list
GroceryList.prototype.add_item = function(item, quantity) {
  this[item] = quantity;
};

// 3. Delete item from list
GroceryList.prototype.remove_item = function(item) {
  delete this[item];
};

// 4. Update quantity of item from list
GroceryList.prototype.update_quantity = function(item,quantity) {
  this.add_item(item,quantity);
};

// 5. Delete item from list
GroceryList.prototype.print_list = function() {
  console.log(this);
};


//What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// This solidified the constructor function for me, as well as the
// benefits of bracket versus dot notation.

//What was the most difficult part of this challenge?
// The most difficult part of the challenge was figuring out how a
//constructor function works for objects that do not require an
//argument at creation.

//Did an array or object make more sense to use and why?
// An object made more sense for this assignment as we were using
// key/value type of pairs for the item and quantity of each item on
//the list.

// Driver Code
var today_list = new GroceryList();
today_list.add_item('squash',3);
console.log(today_list);
today_list.add_item('squash',5);
console.log(today_list);
today_list.add_item('peas',5);
console.log(today_list);
today_list.add_item('corn',5);
console.log(today_list);
today_list.remove_item('corn');
console.log(today_list);
today_list.update_quantity('squash',2);
console.log(today_list);
today_list.print_list();
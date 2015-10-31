#Input: String for product, Integer for quantity
#Output: Hash containing product & quantity
#Methods:
#1) Create a list: No inputs, Hash output
#2) Add an item/quantity: String/integer input and Hash input, Hash output
#3) Remove item: String and Hash input, Hash output
#4) Update quantities: String/Integer and Hash input, Hash output
#5) Print List: Hash input, string output

#Method 1
#Create a new Hash and return empty Hash

#Method 2
#Add string to hash key and set key value to quantity
#Return modified hash

#Method 3
#Find string input in hash keys
#Remove key and value from Hash
#Return hash

#Method 4
#Find string input in hash keys
#Update key value to new quantity (input integer)
#Return Hash

#Method 5
#Read each key value pair in Hash
#Print out each pair as a line item

#Method 1
def new_grocery_list
 {}
end

#Method 2
def add_to_grocery_list(new_product, new_quantity, my_list)
  my_list[new_product] = new_quantity
  my_list
end

#Method 3
def remove_from_grocery_list(remove_product, my_list)
  my_list.delete(new_product)
  my_list
end

#Method 4
def update_quantity_in_list(product, new_quantity, my_list)
  my_list[product] = new_quantity
  my_list
end

#Method 5
def print_list(my_list)
  my_list.each{|key, value| puts key + " " + value.to_s}
end

#What did you learn about pseudocode from working on this challenge?
  #The psuedocode for this assignment wasn't terribly complicated in terms of logic. Breaking down each method and specifying the inputs and outputs for each was helpful since we were building multiple methods and keeping track of inputs/outputs could get confusing.
#What are the tradeoffs of using Arrays and Hashes for this challenge?
  #Hashes are easer to call since you have to add/modify products and quantities. Hashes eliminate the need for a search function.
#What does a method return?
  #A method returns the last executed statement of the method. When addind products and quantities to the list, I needed to call the list at the end to make sure we returned the full hash and not just the quantity of product added.
#What kind of things can you pass into methods as arguments?
  #Any variables can be passed through, including hashes, strings, and values.
#How can you pass information between methods?
  #Without using classes, the modified variables need to be returned in each method so that they can then be passed on to the next method.
#What concepts were solidified in this challenge, and what concepts are still confusing?
  #The process of 'returning' objects was solidified, as well as modifying elements in a hash.

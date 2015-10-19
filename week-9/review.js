//user stories 9.2-1
//As a user stories I will like to create a new grocery list.
//As a user stories I will like to add an item to the quantity of the grocery list.
//As a user story I will like to remove the item of the list 
//As a user story I will like to updat the list of my groceries.
//As a user story I will like to display my grocery list.

//Pseudocode
//create a function that will take an object with the key of groceries and value of quantity
// with another function remove an item from the list
//Create a function to change the grocery list .
// Create a function to display my grocery list.


var list = {};

function groceries (grocery,quantity){
 list[grocery] = quantity;
}

function remove(grocery){
 if (list.hasOwnProperty(grocery) == false){
 	console.log("You don't have that item");
 }
 else { 
 	delete list[grocery]

 }
}
function change(grocery,quantity){
	list[grocery] = quantity;
}

function show(){
	console.log(list);
}

 groceries("strawberries",3)
groceries("watermelon",2)
groceries("avocados",3)
groceries("orange",1)
groceries("chicken",4)
show()
remove("chicken")
show()
change("orange",2)
show()

//reflection
//What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
//I tried doing the has_key method but then I saw that it didn't work so I had to review doing has own property 
//What was the most difficult part of this challenge?
//just learning different techniques to use since javascript it's a bit different than ruby
//Did an array or object make more sense to use and why?
//I did an object and it made more sense since you have a key and a value.
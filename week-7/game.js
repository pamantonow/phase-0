// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:Defeat voldermort and pickup books with new spells.
// Goals:To kill  Voldermort.
// Characters:Hermione Granger and Voldermort
// Objects:Hermione(positions,spells)
// Functions: move up, move down, pick a book and cast a spell.

// Pseudocode
//Create the players which will be Hermione and Voldermort.
//Make a positions to move Hermione forward.
//Create a function for her to pick a book, and look for spells.
//If voldermort it's around cast a spell to defeat him.
//

// Initial Code

var hermione = {
positionRight: 0,
positionDown:0,
move: function(direction){
	if (direction == "forward"){
		this.positionRight += 5
	}
	else if(direction == "down"){
		this.positionDown += 5
	}
	checkGame()
}

}
var book = {
	positionRight: 10,
	positionDown: 10
}
var voldermort = {
	positionRight: 15,
	positionDown: 15,
	alive: true
}
 function checkGame(){
 	if (hermione.positionRight == book.positionRight && hermione.positionDown == book.positionDown){
 	console.log("You learned a new Spell");
 		hermione.castSpell = function(){
   		if  (hermione.positionRight == voldermort.positionRight && hermione.positionDown == voldermort.positionDown){
   		voldermort.alive = false
   		console.log("You just killed Voldermort"); }
   }
 	}
 	console.log("Your position is " + hermione.positionRight + hermione.positionDown)
 }
hermione.move("forward")
hermione.move("forward")
hermione.move("down")
hermione.move("down")
hermione.move("forward")
hermione.move("down")
 hermione.castSpell()
// hermione.castSpell();



// Refactored Code






// Reflection
//What was the most difficult part of this challenge?
//I had never done a game so learning how to write it was hard
//What did you learn about creating objects and functions that interact with one another?
//I learned that by using this. can access variables in other functions
//Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
//How can you access and manipulate properties of objects?
//by writing the name of the object. whatever you want to add the properties
//
//
//
//
//
//
//
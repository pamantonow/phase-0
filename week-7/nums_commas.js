


// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with:Mike .

// Pseudocode

// 1- create a function with a single argument that accepts an integer.
// 2- create a variable (array) that turns the integer argument into a string then splits the string into individual strings. then .reverse the split strings. 
// 3- create a for loop by defining a var (index) that is equal to 0. the loop should stop when the its looped through the entire array. the var (index) should be incremented each time using += 1.
// 4- after iterating, use the modal of 3 = 0 against the var (index) to see where a comma should be added. In those places add a ","
// 5- remove the commas that come at the front of the numbers by reversing then joining then slicing the (0, -1) position.
// 6- return the array



// Initial Solution
function seperateComma(number) {
	var array = number.toString().split('').reverse();
	 for (var index = 0; index < array.length; index += 1) {
	 	if (index % 3 == 0){
	 		array[index] += ","
	 	}
	 }
 array = array.reverse().join("").slice(0,-1);
 return array
}

console.log(seperateComma(50000));



// Refactored Solution






// Your Own Tests (OPTIONAL)




// Reflection
//What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//learning different methods to solve it was tricky since Javascript has some different way to use things.
//What did you learn about iterating over arrays in JavaScript?
//learning how to use for properly took me a while to know since in ruby is usually for a different loop.
//What was different about solving this problem in JavaScript?
//What built-in methods did you find to incorporate in your refactored solution?

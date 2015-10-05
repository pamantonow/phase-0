// JavaScript Olympics

// I paired [by myself, with:Jamie Runyan] on this challenge.

// This challenge took me [#] hours.
//pseudocode:
//Create function that takes an array
//the array should include the names and events
// (push)add a win property to each athlete in the array.
//create  a new function that accepts ah string as an argument and reverse it.
//


// Warm Up

function addWin(athletes) {
    for (var index = 0; index < athletes.length; index ++){
    	athletes[index].win = function(){
    		console.log(this.name + " Won first place in " + this.event);
    	}
    }
}

 var athletes = [
 { name: "Michael Phelps",event:"swimmer"},
{ name:"JennyThompson", event: "swimmer"},
{ name:"Carl Lewis", event:"Athlete"}
 ];

addWin(athletes)
// 
 

athletes[0].win();
athletes[1].win();
athletes[2].win();
console.log(athletes);
// Bulk Up


// function reverse(name) {
// var reversed = name.split("").reverse().join("");
// return reversed;
// }
// var name = "Let's party";
// console.log(reverse(name));




// 2,4,6,8


// function even(numbers) {
//   var newArray = [];
//    for (var i = 0; i < numbers.length; i += 1) {
//      if (numbers[i] % 2 == 0){
//        newArray.push(numbers[i]); } 
//    }
//  return newArray;
// }
// var numbers = [1,2,3,4,5,6];
// console.log(even(numbers));



// console.log(seperateComma(50000));




// "We built this city"
// function Athlete(name,age,sport,quote){
//     this.name = name;
//     this.age = age;
//     this.sport = sport;
//     this.quote = quote;
// };

// var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
// console.log(michaelPhelps.constructor === Athlete)
// console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

//Reflection
//What JavaScript knowledge did you solidify in this challenge?
//using the loops helped me solidify more since I was still a little confused of using for.
// What are constructor functions?
//constructor functions are like classes in Ruby.
// How are constructors different from Ruby classes (in your research)?
//Instead of having an instace of a variable like in ruby you will use this. also when you create a new class , you don't 
//need the a dot after new.


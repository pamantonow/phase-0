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

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// __________________________________________
// Initial Solution
// for (var names in votes) {
//   if (!voteCount.hasOwnProperty(votes[names].president)) {
//       var pres = {votes[names].president: 1}  
//       voteCount.president[i] = pres;
//   }
//   else if (voteCount.hasOwnProperty(votes[i].president)) {
//     vountCount.president[i]++;
//   }
// }



// for (var voter in votes) { 
//     var president = votes[voter].president
//     var vicePresident = votes[voter].vicePresident
//     var secretary = votes[voter].secretary
//     var treasurer = votes[voter].treasurer
//     if   (!voteCount.president.hasOwnProperty(president)){
//       voteCount.president[president] = 1;
//     }
//     else if (voteCount.president.hasOwnProperty(president)) {
//       voteCount.president[president] += 1;
//     }
//     if   (!voteCount.vicePresident.hasOwnProperty(vicePresident)){
//       voteCount.vicePresident[vicePresident] = 1;
//     }
//     else if (voteCount.vicePresident.hasOwnProperty(vicePresident)) {
//       voteCount.vicePresident[vicePresident] += 1;
//     }
//      if   (!voteCount.secretary.hasOwnProperty(secretary)){
//       voteCount.secretary[secretary] = 1;
//     }
//     else if (voteCount.secretary.hasOwnProperty(secretary)) {
//       voteCount.secretary[secretary] += 1;
//     }
//      if   (!voteCount.treasurer.hasOwnProperty(treasurer)){
//       voteCount.treasurer[treasurer] = 1;
//     }
//     else if (voteCount.treasurer.hasOwnProperty(treasurer)) {
//       voteCount.treasurer[treasurer] += 1;
//     }
    
// }
//    for (var position in voteCount){
//     var max = 0;
//     var mostvotesName = "";
//      for (var name in voteCount[position]){
//       var votes = voteCount[position][name];
//       if (votes > max ) {
//         var max = votes 
//         var mostvotesName = name
//       }
      
    
//       console.log(name);
       
//      }
//      officers[position] = mostvotesName
//      console.log(officers);
//    }
    
      
  




// __________________________________________
// Refactored Solution

for (var voter in votes) {
  //for (var vals in voter) { 
              
    //Check for president
    var positions = ["president","vicePresident","secretary","treasurer"];
    
   
   for (var index in positions ) {
    var position = positions[index];
    var candidate = votes[voter][position]
      if (!voteCount[position].hasOwnProperty(candidate)){
        voteCount[position][candidate] = 1;
      }
      else if (voteCount[position].hasOwnProperty(candidate)) {
        voteCount[position][candidate] += 1;
      }
    }
    // console.log(voteCount);
}
   for (var position in voteCount){
    var max = 0;
    var mostvotesName = "";
     for (var name in voteCount[position]){
      var votes = voteCount[position][name];
      if (votes > max ) {
        var max = votes 
        var mostvotesName = name
      }
      
    
      console.log(name);
       
     }
     officers[position] = mostvotesName
     console.log(officers);
   }
    
      




// __________________________________________
// Reflection

//What did you learn about iterating over nested objects in JavaScript?
//Looping through a nested objects was easier than looping through nested hashes in ruby , since you can use For in
//Were you able to find useful methods to help you with this?
//yes when I had to refactor the solution
//What concepts were solidified in the process of working through this challenge?
//Iterating over hashes was more solidify 



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
// DOM Manipulation Challenge


// I worked on this challenge [by myself, with:C Jouilain].
// What did you learn about the DOM?
// What are some useful methods to use to manipulate the DOM?

// Add your JavaScript calls to this page:

// Release 0:

document.getElementById("release-0").className += "done";


// Release 1:

document.getElementById("release-1").style.display = "none"


// Release 2:

document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2";

// Release 3:

document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 4:

var element = document.getElementsByClassName("release-4");
for (var i = 0; i < element.length; i++) {
  var element = element[i];
  element.style.fontSize = "2em";
}


// Release 5:

var hidden = document.getElementById("hidden");
document.body.appendChild(hidden);


//reflection
//What did you learn about the DOM?
//I learned how to access css and by id and by the tag name, althought at first it was little hard , there was a little issue
//with my page that I couldn't see what changes were happening but then later it went smooth.

//What are some useful methods to use to manipulate the DOM?
//document. something is the most useful method to manipulate a DOM

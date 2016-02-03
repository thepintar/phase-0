// DOM Manipulation Challenge


// I worked on this challenge with Menuka


// Add your JavaScript calls to this page:

// Release 1:
var release0div = document.getElementById("release-0");  
// var release0class = document.createAttribute("class");     
// release0class.value = "done";                           
// release0div.setAttributeNode(release0class);                          
release0div.className += "done";



// Release 2:

document.getElementById("release-1").style.display = "none"; 


// Release 3:
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";


// Release 4:

document.getElementById("release-3").style.backgroundColor = "955251";


// Release 5:
var release4 = document.getElementsByClassName("release-4");
for (var i=0; i<release4.length; i++){
  release4[i].style.fontSize = "2em";
}

var release5 = document.getElementById("hidden");
document.body.appendChild(release5.content.cloneNode(true));

// Release 6:

// What did you learn about the DOM?
// I learned that all of the different elements can be easily manipulated using javascript. This challenge also really helped me to understan
// why the HTML5 semantic tags are so useful.

// What are some useful methods to use to manipulate the DOM?
// The whole range of ".getElementBy" methods are incredibly useful to assign the content of certain element to a variable append and 
// manipulate it. The "appendChild" method is another useful one for when you want to add something to the page that doesn't already exist.

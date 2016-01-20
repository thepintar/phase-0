// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var myVar = 12;
myVar += 1;
if (myVar > 10){console.log("It's bigger!");}
	else
{console.log("This won't be logged :(");}

prompt("What's your favorite food?");
console.log("OMG ME TOOO!!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for(var hashLine = "#";hashLine.length<8;hashLine+="#")
	console.log(hashLine);

// Functions

// Complete the `minimum` exercise.
 function min(numA, numB) {
 	if (numA < numB){
 		return numA;
 	}
 	else {
 		return numB;
 	}
 }

var me = {"Mike", 30, "Milanesa","Grapefruit","Bacon","I had a locally successful rap group in highschool and I still rap at a legendary level."}
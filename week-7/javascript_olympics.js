// JavaScript Olympics

// I paired by myself on this challenge.

// This challenge took me [#] hours.


// Warm Up

// What is this?


// Bulk Up
// Input: Array of Athlete objects.
// Output: string that states the athlete won
// Steps: Define a function that inputs an array of objects
// 		  Create a for loop that runs as long as the length of the array
//		  In each iteration, set the win attribute of the object to true
//		  and then log the phrase given using the objects name and event_type properties

function win(x){
	for(index=0; index<x.length; index++){
		x[index].win = true;
		console.log(x[index].name +" has won the "+ x[index].event_type + "!");
	}
};

var athleteArray = [
	{name: "Sarah Hughes",
	event_type: "Women's Singles",
	},
	{	name: "Calvin Johnson",
		event_type: "Superbowl",
	}
	];

win(athleteArray)

// Jumble your words
// Input: string
// Output: the same string but in reverse
// Steps: 
// 	1. split the string to an array
// 	2. reverse and join the array
// 	3. log the array as a string

function reverseString(string){
	reversedString = string.split("").reverse().join("");
	console.log(reversedString);
}
reverseString("This is a string boyee")

// 2,4,6,8

function evener(numarray){
	outputArray=[]
	for(index=0; index < numarray.length; index++){
		if (numarray[index]%2 === 0) {
			outputArray.push(numarray[index])
		}
	}
	console.log(outputArray);
}
evener([1,2,3,4,5,6,7,8])


// "We built this city"
function Athlete(name,age,sport,quote){
	this.name = name;
	this.age = age;
	this.sport = sport;
	this.quote = quote;
}


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// This challenge reaaaally helped me to solidify working with objects. I had a lot of trouble until I remembered the ".this" function. Jeez almighty.
// I also solidifed iterating over objects.

// What are constructor functions?
// Constructor functions are functions which indicate how new instances of objects should be initialized. I feel like an object is partly
// Ruby Hash, partly Ruby Class, and the constructor function is somewhere between an initialize method and just filling up a hash.

// How are constructors different from Ruby classes (in your research)?
// Both a class and an object can have functions/methods inside of them, but inside of an object the function is stored as what is essentially
// the value of the hash. In a class, you define a method and outline its functionality, but when using an object constructor you define the
// function as a property value of a property. So lets say you wanted to have a "name" method (ignoring the attribute accessors for the time being)
// in Ruby which returns the name of a class instance. You have to define the method name within the class to return the value of whatever the name is.
// In Javascript, using an object constructor, you construct the object as a function, and inside you would create a property called "name" and set
// its value to the name string, or whatever it is, just like you would in a Ruby hash. Now, when you create a new instance of the object, you
// can just call instance.name and the name string will be returned. Or, if you set the property value as another function, you would use
// instance.name(), where the optional argument would live in the parenthesis.

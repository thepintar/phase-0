 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: This game is called The Darkness.
// Overall mission: The Hero must make his way through the darkness and find the lightswitch.
// Goals: Maneuvre through the darkness to find the exit.
// Characters: Main Character
// Objects: Main Character, Torch
// Functions: Player Action, Torchlight

// Pseudocode
/*
Define an object called player with properties position and win.
Define an object called torch with properties count, lit and life.
Define a map as a string of characters split into an array.
Create a playeraction function that takes one of 6 inputs:
left, right, up, down, map and torch.
The directional movements change the position of the player based on the map or alerts them that their movement is blocked.
Map calls a map printing function.
Torch also calls a map printing function depending on the value of the torch count property.
Check to see if the hero is located in the same spot as another torch on the ground.
Check to see if the hero is located at the end of the maze, in which case print the full maze.
Create a map printing function that checks to see if the torch lit property is true or false.
If the torch lit is false, the map will print an obfuscated version of itself, only revealing the location of the hero.
If the torch lit is true, the map prints an obfuscated version but replaces the characters just around the hero with the characters
from the map.


*/

// Initial Code
// var player = {
// posIndex: 31,
// win: false,
// }
// var torch = {
// 	count: 1,
// 	lit: false,
// 	life: 3,
// }

// var darkView = "############################################################".split("");
// var mapCollection = {
// 	map1 : "|||||||||||   |   i|| | | | ||| |   |  %||||||||||".split(''),
// 	// map2 : "###########---#---i##-#-#-#-###-#---#--%##########".split(''),
// 	// map3 : "###########---#---i##-#-#-#-###-#---#--%##########".split(''),
// 	// map4 : "###########---#---i##-#-#-#-###-#---#--%##########".split(''),
// 	// map5 : "###########---#---i##-#-#-#-###-#---#--%##########".split(''),
// }
// var roundMap = mapCollection.map1;
// playerAction = function (playerMove) {
// 	var winTile = roundMap.indexOf("%");
// 	var torchTile = roundMap.indexOf("i")
// 	if (torch.lit === true && torch.life < 1){
//   	torch.lit = false;
//   	console.log("Your torch fizzles out. Darkness consumes you again.")
//   }
//   if(playerMove === "up"){
//   	if (roundMap[player.posIndex-10]!="|"){
//  		player.posIndex -= 10;
//  		console.log("You stagger up, hands grasping out into the darkness...");
//  	}
//  	else{
//  		console.log("You try to move up, but you bump into a wall...");
//  		// alert("You try to move up, but you bump into a wall...");
//  	}
//    if (torch.lit === true && torch.life > 0){
//   	torch.life -= 1
//   }
//   }
//   else if (playerMove === "down"){
//   	if (roundMap[player.posIndex+10]!="|"){
//  		player.posIndex += 10;
//  		console.log("You stumble down, hands grasping out into the darkness...");
//  	}
//  	else{
//  		console.log("You try to move down, but you bump into a wall...");
//  		// alert("You try to move down, but you bump into a wall...");
//  	}
//    if (torch.lit === true && torch.life > 0){
//   	torch.life -= 1
//   }
//   }
//   else if (playerMove === "left"){
//   	if (roundMap[player.posIndex-1]!="|"){
//  		player.posIndex -= 1;
//  		console.log("You ease to the left, hands grasping out into the darkness...");
//  	}
//  	else{
//  		console.log("You try to move left, but you bump into a wall...");
//  		// alert("You try to move left, but you bump into a wall...");
//  	}
//   if (torch.lit === true && torch.life > 0){
//   	torch.life -= 1
//   }
//   }
//   else if (playerMove === "right"){
//   	if (roundMap[player.posIndex+1]!="|"){
//  		player.posIndex += 1;
//  		console.log("You shuffle to the right, hands grasping out into the darkness...");
//  	}
//  	else{
//  		console.log("You try to move right, but you bump into a wall...");
//  		// alert("You try to move right, but you bump into a wall...");
//  	}
//  	  if (torch.lit === true && torch.life > 0){
//   	torch.life -= 1
//   }
//   }
//   else if (playerMove === "torch"){
//   		if (torch.count > 0){
//   			torch.count -=1;
//   			torch.life = 3;
//   			torch.lit = true;
//   			console.log("Your torch flickers alight, but the glow is meager...");
//   			// alert("Your torch flickers alight, but darkness swallows the meager glow within a few feet...");
//   			printMap(darkView);
//   		}
//   		else {
//   			console.log("You have no torch.");
//   			// alert("You have no torch.")
//   		}
//   }
//   else if (playerMove === "map"){
//   	printMap(darkView);
//   }
//   if (player.posIndex === winTile){
// 		player.win = true;
// 		console.log("You discover an exit, and squinting, step out of the darkness.")
// 	}
//   if (player.posIndex === torchTile){
// 		torch.count += 1;
// 		console.log("Your foot kicks something on the ground. You reach down to find another torch.");
// 		roundMap[torchTile]=" ";
// 	}
//  }


// function printMap(map){
// 	var roundMap = mapCollection.map1
// 	if (torch.lit === false){
// 		var printRow = []
// 		for(row = 0; row<5 ; row++){
// 			for(index = row * 10; index < (row * 10 + 10); index++){
// 				if (index === player.posIndex){
// 					printRow.push("@")
// 					}
// 				else {
//  				printRow.push(darkView[index])}
//  			}
//  			console.log(printRow.join(""));
//  			var printRow = [];
// 		}
// 	console.log("\n")
// 	}
// 	else if (torch.lit === true){
// 		var printRow = []
// 		for(row = 0; row<5 ; row++){
// 			for(index = row * 10; index < (row * 10 + 10); index++){
// 				if (index === player.posIndex-11){
// 					printRow.push(roundMap[player.posIndex-11])
// 					}
// 				else if (index === player.posIndex-10){
// 					printRow.push(roundMap[player.posIndex-10])
// 					}
// 				else if (index === player.posIndex-9){
// 					printRow.push(roundMap[player.posIndex-9])
// 					}
// 				else if (index === player.posIndex-1){
// 					printRow.push(roundMap[player.posIndex-1])
// 					}
// 				else if (index === player.posIndex){
// 					printRow.push("@")
// 					}
// 				else if (index === player.posIndex+1){
// 					printRow.push(roundMap[player.posIndex+1])
// 					}
// 				else if (index === player.posIndex+9){
// 					printRow.push(roundMap[player.posIndex+9])
// 					}
// 				else if (index === player.posIndex+10){
// 					printRow.push(roundMap[player.posIndex+10])
// 					}
// 				else if (index === player.posIndex+11){
// 					printRow.push(roundMap[player.posIndex+11])
// 					}
// 				else {
//  				printRow.push(darkView[index])}
//  			}
//  			console.log(printRow.join(""));
//  			var printRow = [];
// 		}
// 	console.log("\n")
// 	}
// }
// while (player.win === false){

// var action = prompt("What would you like to do?").toLowerCase();
// 	if(action != "up" && action != "down" && action != "left" && action != "right" && action != "torch" && action != "map"){
// 		alert("You must enter a valid action (up, down, left, right, torch or map)")
// 	}
// 	else{
// 		alert(action)
// 		playerAction(action);
// 		// player.win = true;
// 	}
// }

console.log("You wake up in a strange place surrounded by darkness, your head throbbing with a dull pain.")
console.log("You stand warily, your head filled with fog, without memory of how you got here.")
console.log("Your pockets are empty, but you find an unlit torch at your feet.")
console.log("What will you do?")
console.log("To see a map of where you are enter 'map'. You are represented by a '@' and the darkness, by '#'")
console.log("To light the torch enter 'torch'. It doesn't look like it will stay lit for long.")
console.log("To move in any direction enter 'up','down','left' or 'right'.")


// Refactored Code

var player = {
posIndex: 31,
win: false,
}
var torch = {
	count: 1,
	lit: false,
	life: 3,
	array:[-11, -10, -9, -1, 1, 9, 10, 11]
}
var mapCollection = {
	map1 : "|||||||||||   |   i|| | | | ||| |   |  %||||||||||".split(""),
	// map2 : "###########---#---i##-#-#-#-###-#---#--%##########".split(''),
	// map3 : "###########---#---i##-#-#-#-###-#---#--%##########".split(''),
	// map4 : "###########---#---i##-#-#-#-###-#---#--%##########".split(''),
	// map5 : "###########---#---i##-#-#-#-###-#---#--%##########".split(''),
}
var roundMap = mapCollection.map1;

playerAction = function (playerMove) {
	var winTile = roundMap.indexOf("%");
	var torchTile = roundMap.indexOf("i")
	if (torch.lit === true && torch.life < 1){
  		torch.lit = false;
  		console.log("Your torch fizzles out. Darkness consumes you again.")
  	}
  	if (playerMove === "up"){
  		if (roundMap[player.posIndex-10]!="|"){
 			player.posIndex -= 10;
 			console.log("You stagger up, hands grasping out into the darkness...");
 		}
 		else{
 			console.log("You try to move up, but you bump into a wall...");
 		}
   		if (torch.lit === true && torch.life > 0){
  			torch.life -= 1
  		}
  	}
  	else if (playerMove === "down"){
  		if (roundMap[player.posIndex+10]!="|"){
 			player.posIndex += 10;
 			console.log("You stumble down, hands grasping out into the darkness...");
 		}
 		else{
 			console.log("You try to move down, but you bump into a wall...");
 			// alert("You try to move down, but you bump into a wall...");
 		}
   		if (torch.lit === true && torch.life > 0){
  			torch.life -= 1
  		}
 	}
 	else if (playerMove === "left"){
  		if (roundMap[player.posIndex-1]!="|"){
 			player.posIndex -= 1;
 			console.log("You ease to the left, hands grasping out into the darkness...");
 		}
 		else{
 			console.log("You try to move left, but you bump into a wall...");
 			// alert("You try to move left, but you bump into a wall...");
 		}
 		if (torch.lit === true && torch.life > 0){
  			torch.life -= 1
  		}
 	}
	else if (playerMove === "right"){
  		if (roundMap[player.posIndex+1]!="|"){
 			player.posIndex += 1;
 			console.log("You shuffle to the right, hands grasping out into the darkness...");
 		}
 		else{
 			console.log("You try to move right, but you bump into a wall...");
 			// alert("You try to move right, but you bump into a wall...");
 		}
 		if (torch.lit === true && torch.life > 0){
  			torch.life -= 1
 		}
 	}
	else if (playerMove === "torch"){
  		if (torch.count > 0){
  			torch.count -=1;
  			torch.life = 3;
  			torch.lit = true;
  			console.log("Your torch flickers alight, but the glow is meager...");
  			// alert("Your torch flickers alight, but darkness swallows the meager glow within a few feet...");
  			printMap();
  		}
  		else {
  			console.log("You have no torch.");
  			// alert("You have no torch.")
  		}
	}
	else if (playerMove === "map"){
  		printMap();
		}
//Check to see if the player completed the maze.
  	if (player.posIndex === winTile){
		player.win = true;
		console.log("You discover an exit, and squinting, step out of the darkness.")
		printMap();
	}

//Check to see if the player encountered a torch.
	if (player.posIndex === torchTile){
		torch.count += 1;
		console.log("Your foot kicks something on the ground. You reach down to find another torch.");
		roundMap[torchTile]=" ";
	}
 }


function printMap(){
	var tempMap = "############################################################".split("");
	if (player.win === false && torch.lit === false){
		tempMap[player.posIndex]="@"
		console.log("\n")
		console.log(" ----MAP---")
		for(row = 0; row<5 ; row++){
			console.log("|"+tempMap.slice(row*10, row * 10+10).join("")+"|")
		}
 		console.log(" ----------"+"\n")
	}
	
	
	else if (player.win === false && torch.lit === true){
		tempMap[player.posIndex]="@"
		torch.array.forEach(function (item){
			tempMap[player.posIndex+item] = roundMap[player.posIndex+item];})
		console.log("\n")
		console.log(" ----MAP---")
		for(row = 0; row<5 ; row++){
			console.log("|"+tempMap.slice(row*10, row * 10+10).join("")+"|")
		}
		console.log(" ----------"+"\n")
	}
	else if (player.win === true){
		for(row = 0; row<5 ; row++){
			console.log("|"+roundMap.slice(row*10, row * 10+10).join("")+"|")
		}
	}
}

// while (player.win === false){

// var action = prompt("What would you like to do?").toLowerCase();
// 	if(action != "up" && action != "down" && action != "left" && action != "right" && action != "torch" && action != "map"){
// 		alert("You must enter a valid action (up, down, left, right, torch or map)")
// 	}
// 	else{
// 		alert(action)
// 		playerAction(action);
// 		// player.win = true;
// 	}
// }

// Driver Code:
playerAction("map")
playerAction("up")
playerAction("up")
playerAction("right")
playerAction("right")
playerAction("down")
playerAction("down")
playerAction("right")
playerAction("torch")
playerAction("right")
playerAction("map")
playerAction("up")
playerAction("map")
playerAction("up")
playerAction("map")
playerAction("right")
playerAction("right")
playerAction("right")
playerAction("left")
playerAction("torch")
playerAction("down")
playerAction("map")
playerAction("down")
playerAction("map")
playerAction("right")
playerAction("map")
playerAction("right")


/* Reflection
What was the most difficult part of this challenge?
The most difficult part of this challenge was deciding on how to implement the torch, and generally keeping track of what
object properties ought to be adjusted. Early on I decided that I'd be using a really small map template, and therefore I could just store the
simple text-based map in one long string. I'm glad I made that choice since it made it easy to convert that into an array and then map
only a portion of of one map onto another depending on the state of the torch object. I'm assuming that later on I could map images to
the different chosen symbols and upgrade the look of the game pretty easily. Early on I had a little bit of trouble because I began
coding it as a game that took inputs. I quickly learned that node doesn't support prompt, and while JSFiddle did, I couldn't use console logs
there. I have a while loop in place for if and when I fully implement this into the DOM.

What did you learn about creating objects and functions that interact with one another?
Working on this project really solidified the uses of javascript objects. Before, I mostly viewed them as substitute hashes, but now I'm
seeing how useful they can be in a completely different usage. I didn't set any object properties as functions in this game, but I read
up more on objects while doing this and feel more confident overall.

Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
I did use .slice and .forEach, but I used those previously in the week. My refactoring focussed mainly on making my code as DRY as possible,
and I thought up a few ways to consolidate it.

How can you access and manipulate properties of objects?
Object properties can be accessed and manipulated using a dot, like so: myObject.property accesses the value of "property" withing the object
myObject. Using that same syntax you can manipulate that property. It looks like this: myObject.property. = value. This updates the value
of "property" to "value".
*/
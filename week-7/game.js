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
Define an object called player with properties position, torchCount, torch and win.
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


// Reflection
//
//
//
//
//
//
//
//
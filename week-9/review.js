// Release 01, User Stories:
// As a User, I want to be able to create a grocery list and add items and their quantity to it.
// I also want to be able to remove items from the list or update the quantities.
// Finally, I want to be able to print the list.

// Release 02, Pseudocode:
// Input: Item Name and Amount
// Output: A list of items and Amount
// Steps:
// Define a constructor function called groceryList.
// Within the object, define an object called itemList, where all the items will be stored.
// Define functions "addTo", "update", "deleteItem" and "print", using the syntax "this.functionName".
// Define function "addTo" as a function that inputs arguments "item" and "amount" and then adds "item" as an object property and "amount" as its value.
// 	This function should check IF "item" has value "undefined", and if it does not it will let the user know the item already exists on the list.
// Define function "update" as a function that inputs arguments "item" and "amount" and then updates the property "amount" of "item"
// 	This function should check IF "item" has value "undefined", and if it does it will let the user know the item doesn't exist on the list.
// Define function "deleteItem" as a function that checks to see IF "item" has a value not equal to undefined and IF not will delete "item"
// Define function "print" as a function that will LOG the list to the console.

function groceryList() {
	this.itemList = {},
	this.addTo = function(item, amount){
		if (this.itemList[item]===undefined){
			this.itemList[item]=amount;}
		else {
			console.log("This item already exists on the list!")
		}},
	this.update = function(item, amount){
		if (this.itemList[item]!==undefined)
			this.itemList[item]=amount;
		else
			console.log("This item isn't on the list yet! Use add to add it!")
	},
	this.deleteItem = function(item){
		if (this.itemList[item]!==undefined)
			delete this.itemList[item];
		else
			console.log("This item isn't on the list!")
	},
	this.printList= function(){
		console.log("==========================")
		console.log("Here is your current list:")
		console.log("==========================")
		for(var item in this.itemList){
				console.log(item.toUpperCase() + ": " + this.itemList[item]);
		}
			
	}
}

var mikesList = new groceryList();
mikesList.addTo("apples", 2)
mikesList.addTo("apples", 1)
mikesList.update("apples", 1)
mikesList.printList()
mikesList.addTo("oranges", 1)
mikesList.printList()
mikesList.deleteItem("apples")
mikesList.printList()
mikesList.update("oranges", 30)
mikesList.printList()


// What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
// I solidified the concept of a constructor function, especially when embedding them with multiple other functions which reference
// the new object instance and an object within that object. It was good practice in using bracket vs. dot notation, as that was
// very important here. I also further solidifed iterating through objects in my print function. I had had it down but jumping to ruby
// and then back to javascript again necessitated some refreshing.


// What was the most difficult part of this challenge?
// The most difficult part was getting all of the functions in the constructor function to reference the object itemList properly
// using "this" and bracket and dot notation.


// Did an array or object make more sense to use and why?
// An object made a lot more sense since I wanted each quantity value to be a property value of each object property name. It could
// have been done as an alternating value list in an array, but I didn't much like that option. It would have been cumbersome.
// User Story:
// As a user, I want to be able to take a group of numbers and do three things to it:
// I want to be able to take the sum of all the numbers, I want to be able to find the mean of all the numbers, and I want to be able to find
// the median of all the numbers. I want to be able to do all of these things individually with functions called sum, mean and median.
// Keep in mind that my group of numbers might contain an odd number of numbers or an even number of numbers. This will impact the median function.

/* Release 5:

What passed and what failed?
The tests that required sum, mean and median to be functions passed, but the tests that required them to actually function failed.
The reason they failed were simple errors in code as outlined below:
*/

//Code received with some suggestions for fixes and improvments:

function sum(array){
  var total = 0;
  for (var i = 0; i < array.length; i++) {
    total += ary[i]; // "ary" should probably be "array" I'm assuming?
    return total; //this doesn't work because the return occurs within the loop, therefore we return after the first item, interrupting the loop.
  }
}

//The solution would look like:

function sum(array){
  var total = 0;
  for (var i = 0; i < array.length; i++) {
    total += array[i]; 
  }
  return total;
}

//A refactored option would be:

function sum(array){
return array.reduce( (prev, curr) => prev + curr );
}

// User story:
// As a user I want to enter the number of students of each grade level so I can have a total number of students in the school. I entered the total number of students in the using sum([23,20,14,25,25]) and received a total number of 107 students.

//Code received:
function mean(array){
  // sum();
  var count = array.length;
  return count; //having a return here means we're exiting the function and returning the length of the array and not executing any of the rest of the code.
  sum ();
  var result = sum()/count;
  return result;
}

//A solution would be:
function mean(array){
  var count = array.length;
  var result = sum(array)/count;
  return result;
}

//A refactored solution would be:
function mean(array){
  return sum(array)/array.length;
}
// User story:
// As a user I want to enter the total number of students and recieve a average number of students per classroom.

function median(array){ //we need to determine whether there are an odd or even number of elements
    numbers.sort(function(a,b) { //numbers is not a defined variable, should be array
     return a - b;
    });
  var sorted = median(); //this calls the function inside of itself, potentially creating an endless loop
  var count = array.length; //not sure whats going on here
  var middle = sorted/2; //or here
  return middle;
}

//A solution might be:
function median(array){
    var sortedArray = array.sort(function(a,b) {
    	a - b;
    })
    if (array.length%2 != 0){
      return sortedArray[Math.floor(array.length/2)]
    }
    else {
      return mean([sortedArray[Math.floor(array.length/2)-1],sortedArray[Math.floor(array.length/2)]]);
    }
}
// User story:
// As a user I want to add each classes student population and receive an average class size.
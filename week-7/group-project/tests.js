// Add the finished solution here when you receive it.


function sum(array){
return array.reduce( (prev, curr) => prev + curr );
}

// As a user I want to enter the number of students of each grade level so I can have a total number of students in the school. I entered the total number of students in the using sum([23,20,14,25,25]) and received a total number of 107 students.

function mean(array){
  return sum(array)/array.length;
}

// As a user I want to enter the total number of students and recieve a average number of students per classroom.

function median(array){
    var sortedArray = array.sort(function(a,b) { //numbers is not a defined variable, should be array
        return a - b; //a return here exits the function and doesn't give us what we want
    })
    if (array.length%2 != 0){
      return sortedArray[Math.floor(array.length/2)]
    }
    else {
      return mean([sortedArray[Math.floor(array.length/2)-1],sortedArray[Math.floor(array.length/2)]]);
    }
}

// As a user I want to add each classes student population and receive an average class size.


// Tests:  Do not alter code below this line.

oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)
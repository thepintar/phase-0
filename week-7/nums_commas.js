// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Menuka.

// Pseudocode
//Input: An integer
//Output: A comma-separated number as a string

/*

1. Defining method that takes in an integer as an argument.
2. Convert integer to string, then reverse the string.
3. Define a counter variable and use while loop or use for loop.
4. In the loop, while the counter is less than the given string's length minus 3, 
    4a. Insert a comma at a postion 3 places after the counter index within the string.
    4b. Increment the counter by 4
5. Out of the loop, reverse the string.
6. Print it.


*/


// Initial Solution

// Solution #1 with .slice()
// function separateComma (number) {
//   var num_comma = number.toString();
//   var num_comma = num_comma.split('').reverse().join('');
//   slice_portion = []
//   for (var counter = 0; counter < (num_comma.length - 3); counter += 3) {
//   	slice_portion.push([num_comma.slice(counter, counter + 3)],",")
//   }
//   slice_portion.push([num_comma.slice(counter, num_comma.length)])
//   return slice_portion.join('').split("").reverse().join('');  
// }

// Solution #2 - with .splice()
function separateComma (number) {
  var num_comma = number.toString();
  var num_comma = num_comma.split('').reverse();
  slice_portion = [];
  for (var counter = 0; counter < num_comma.length; counter += 4) {
  	slice_portion = slice_portion.concat(num_comma.splice(0, 3));
  	slice_portion.push(",");
  }
  slice_portion=slice_portion.concat(num_comma);
  return slice_portion.reverse().join('');  
}

// Refactored Solution
// function separateComma (number) {
//   var num_comma = number.toString();
//   var num_comma = num_comma.split('').reverse().join('');
//   for (var counter = 0; counter < (num_comma.length - 3); counter += 4) {
//     num_comma = [num_comma.slice(0, counter + 3), ",", num_comma.slice(counter+3)].join('');
//   }
//   return num_comma.split('').reverse().join('');
  
// }


// Most Refactored Solution:

// function separateComma (number) {
//   return number.toLocaleString() 
// }



// Your Own Tests (OPTIONAL)

console.log(separateComma(123456789)); 

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// I really like JavaScript's powerful for loop and how it keeps the code neat right out of the gate. Most of what made me approach the problem
// differently was what I learned about Ruby, and transitively how something similar could be done in Javascript. A lot of was also due to my advances
// in familiarity with finding different methods and functions to use from the docs. We actually approached the problem the way I initially
// wanted to approach it when we did the Ruby version. My very first attempts started with reversing the number, but I didn't at that time know
// any good method to slice out segments, so I was forced to scrap it. This time my toolbox was much bigger.

// What did you learn about iterating over arrays in JavaScript?
// I learned that it was much the same as iterating over arrays in Ruby. So far, the biggest difference seems to be in the category of object v hash.
// Perhaps I'll come across more differences the deeper we get.

// What was different about solving this problem in JavaScript?
// The only real differences seemed syntactical. I didn't really feel like I was in a "Javascript" mindset vs a "Ruby" mindset, but rather just a
// coder mindset. The only time I had to differentiate was in thinking, "okay, how would this be different and can I still acccomplish it?"

// What built-in methods did you find to incorporate in your refactored solution?
// Our refactored solution used the .slice(), .split(), .join(), .reverse() and .toString() methods, which are all relatives of Ruby methods. Our final
// FINAL refactor utilizes a method called "toLocaleString", which formats a number based on what area of the world you're in. Since it defaults to
// the good old US of A for us, the number gets spit out with the commas in the correct places.
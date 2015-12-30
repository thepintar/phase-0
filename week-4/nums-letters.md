#Initial Reflection from Release 1
##What does puts do?
'puts' outputs a string but returns a nil value.

##What is an integer? What is a float?
An integer is a number without any decimal (i.e. 1, 2, 1000, 50) and a float is a number with a decimal and the tenths, hundredths, thousandths (etc) place thereafter (i.e. 1.0, 2.2, 3.9, 500.126).

##What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
An float division will return the same value that a standard calculator would while an integer division will return the number rounded down to the nearest integer. An integer division essentially returns the result down to the decimal and then discards the remainder. Its useful to think about real world objects when considering this, as most real-world things are best used whole. If you need to split nine people between two cars, you wouldn't put four people in each car and cut the final person in half. Integer division would simply tell you to put four people in each car. The final person will either have to ride in the trunk or take the bus.

#Challenges from Learn to Program

###Hours in a year
```
puts 24*365

```

###Minutes in a decade
```
puts 60*24*3650

```

#Final Reflection from Release 7

##How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles them the way any calculator would handle them, as numerical logic is native to computer languages.

##What is the difference between integers and floats?
Integers are integers, while floats are any rational number (i.e. a number with a decimal point). Simply put: floating point numbers have decimals and integers don't.

##What is the difference between integer and float division?
Integer division returns the integer and discards the remainder, thereby eliminating anything past the decimal point. It could be described as rounding down to the nearest integer. A float division will divide the way any calculator would and return the value.

##What are strings? Why and when would you use them?
String are blocks of data that can include letters, numbers and symbols. Anything you see on your keyboard can be put into a string. Examples of strings would be a person's name or a series of periods. 

##What are local variables? Why and when would you use them?
A local variable is a variable that one defines within a program. It is any variable that is not already defined before the program is run. You would use a local variable when you want your program to store some information in memory, possibly to manipulate the information or just return it to the user at a later time.

##How was this challenge? Did you get a good review of some of the basics?
This challenge was almost all extremely simple. The only curve ball was asking us to use .reverse and .upcase, which were only curve balls since the rest was nearly brainless. I do understand the usefulness of returning to basics though, and I have to trust that this will be necessary for some other challenge to come.

#Exercises from Release 5
(https://github.com/thepintar/phase-0/blob/master/week-4/defining-variables.rb)[Defining Variables]
(https://github.com/thepintar/phase-0/blob/master/week-4/simple-string.rb)[Simple String Methods]
(https://github.com/thepintar/phase-0/blob/master/week-4/basic-math.rb)[Local Variables and Basic Arithmetical Operations]
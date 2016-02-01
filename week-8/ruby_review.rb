# Create a Car Class from User Stories


# I worked on this challenge by myself.


# 2. Pseudocode
=begin
Define a car class, which takes in attributes of model and color.
Within said class, define method drive, which accepts distance and speed arguements.
Define methods, accelerate, decelerate, turn & stop, which change the speed and direction variables and puts an update.

=end

# 3. Initial Solution

class Car
	def initialize(model, color)
		@model = model
		@color = color
		@totaldistance = 0.0
		@pizzaSlot = {}
	end
	def addPizza(type, address)
		@pizzaSlot[address]=type
		puts "You picked up a #{type} pizza for delivery to #{address}"
		puts "You currently have the following pizzas to deliver:"
		@pizzaSlot.each do |address, type|
			puts "A #{type} pizza to #{address}."
		end
	end
	def deliverPizza(address)
		puts "You deliver the #{@pizzaSlot[address]} pizza to #{address}"
		@pizzaSlot.delete(address)
		puts "You currently have the following pizzas to deliver:"
		@pizzaSlot.each do |address, type|
			puts "A #{type} pizza to #{address}."
		end
	end
	def drive(distance, speed)
		@distance = distance
		@totaldistance += distance
		@speed = speed
		puts "Your #{@color.capitalize} #{@model.capitalize} drives #{@distance} miles at #{@speed} miles per hour."
	end
	def accelerate(speed)
		@speed += speed
		puts "Your #{@color.capitalize} #{@model.capitalize} accelerates to #{@speed} miles per hour."
	end
	def decelerate(speed)
		@speed -= speed
		puts "Your #{@color.capitalize} #{@model.capitalize} decelerates to #{@speed} miles per hour."
	end
	def speedometer
		puts "Your #{@color.capitalize} #{@model.capitalize} is currently moving at #{@speed} miles per hour."
	end
	def stop
		@speed = 0
		puts "Your #{@color.capitalize} #{@model.capitalize} comes to a stop."
	end
	def mytrip
		puts "Your total distance driven is #{@totaldistance} miles."
	end
	def turn(direction)
		puts "Your #{@color.capitalize} #{@model.capitalize} turns #{direction}."
	end
end




# 4. Refactored Solution

class Pizza
	def initialize(style)
		@style = style
		@toppings = []
		@crustStyle = "plain"
	end
	def crust(crustStyle)
		@crustStyle = crustStyle
	end
	def addTopping(ingredient)
		@toppings.push(ingredient)
	end
	def summarize
		puts "Your #{@style} pizza has a #{@crustStyle} crust and the following toppings:"
		@toppings.each do |ingred|
			puts ingred
		end
	end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

# corvette = Car.new("corvette", "red")
# corvette.addPizza("Pepperoni","22 Dodworth St")
# corvette.drive(0.25, 25)
# corvette.stop
# corvette.addPizza("Pepperoni","16 Dodworth St")
# corvette.turn("right")
# corvette.drive(1.5, 35)
# corvette.speedometer
# corvette.addPizza("Vegetarian","11 Dodworth St")
# corvette.deliverPizza("22 Dodworth St")
# corvette.decelerate(20)
# corvette.drive(0.25, 15)
# corvette.stop
# corvette.turn("left")
# corvette.addPizza("Sausage","8 Dodworth St")
# corvette.drive(1.4, 35)
# corvette.stop
# corvette.mytrip


mikepizza = Pizza.new("cheese")
mikepizza.crust("garlic")
mikepizza.addTopping("Pepperoni")
mikepizza.addTopping("Jalapeno")
mikepizza.addTopping("Mint Leaves")
mikepizza.summarize

# 5. Reflection
=begin
What concepts did you review or learn in this challenge?
I reviewed Ruby classes and methods, although honestly I was expecting something a bit different with this challenge. I found
the prompt really confusing and vague. I'm not sure if I wound up making what the challenge was looking for at all, but I did
get a chance to review Ruby and especially Ruby classes, which is ultimately what I was looking for here.

What is still confusing to you about Ruby?
Nothing that I reviewed in Ruby was confusing to me at this point. I actually missed Javascript objects a little bit though, which
wasn't what I was expecting!

What are you going to study to get more prepared for Phase 1?
I'm going to look into incorporating Javascript and Ruby into the DOM, which is something I haven't really covered yet as
it was only optional so far. I'm thinking it might be part of what goes on next week anyhow.

=end
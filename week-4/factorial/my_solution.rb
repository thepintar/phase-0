# Factorial

# I worked on this challenge with Ian Kinner.


# Your Solution Below
def factorial(number)
	product = 1
	if number == 0
		return product
	else
		while (number > 0)
			product *= number
			number -= 1
		end
		return product
	end
end
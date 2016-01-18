# Virus Predictor

# I worked on this challenge with Coline F.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data' #require_relative requires the file that you've indicated in quotes and usually refers to the file in that same directory. Require gives you access to programming libraries bundled with ruby programming. 

class VirusPredictor
  #Initializes the class and stores the input arguments as instance variables.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #Runs the methods predicted_deaths and speed_of_spread using the instance variables from the  intialized method and returns the values.

   
  def virus_effects
    predicted_deaths
    speed_of_spread
    puts "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"
  end

  private
  
  #calculates the number of predicted deaths based on the instance variables determined in the initialize method. Using the .floor Ruby method rounds the number of deaths down to the nearest whole number. Predicted_deaths method also puts a string stating the predicted number of deaths for the state.  
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end 

  end
  #Calculates the predicted speed of spread based on the instance variables determined   in the initialize methods. The method then puts the predicted speed of spread     calculated by running the method. 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      @speed = 0.5
    elsif @population_density >= 150
      @speed = 1
    elsif @population_density >= 100
      @speed = 1.5
    elsif @population_density >= 50
      @speed = 2
    else
      @speed = 2.5
    end

  end

end


#=======================================================================

# DRIVER CODE

STATE_DATA.each_key do |state|
  current_state = VirusPredictor.new(state, STATE_DATA[state][:population_density],   STATE_DATA[state][:population])
  current_state.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The initial hash uses the hash rocket to assign each value to a string whereas the nested hash uses symbol notation
# to assign each value to a symbol.

# What does require_relative do? How is it different from require?
# require_relative attaches a file that lives in the same relative path as the program. In this case the file state_date
#   lives in the same directory. Using require does not assume the same directory and can be used to reference any number
#   of files or libraries included with ruby.

# What are some ways to iterate through a hash?
# You can use the .each_key method, the each_value method, the each_pair method, or just plain old each.
# However when you use the .each method you must be sure to provide a variable for both the key and the value like so: |key, value|.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# There were some local variables that were unneccesary and there were some local variables that should have between
# instance variables, at least the way we chose to refactor it. In general I thought the variables were well-named for clarity.

# What concept did you most solidify in this challenge?
# I solidifed the concept of the private method, as I had never encountered it before! So I both encountered it and solidified it!
# I also solidified iterating through hashes, as I initially didn't remember how to!


# apple = "local variable"
# $orange = "global variable"
# BANANA = "constant variable (value assigned to constants should not be changed)
# @inside_class = "instance variable"
# @@also_inside_class = "class variable"
# the key takeaway here is that different variable types have difference scopes
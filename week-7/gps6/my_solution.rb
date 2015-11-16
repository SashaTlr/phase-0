# Virus Predictor

# I worked on this challenge by myself.
# We spent [#] hours on this challenge.


# Release 3:
# The state data is a nested hash. The outer Hash has each key set
#as a state in the USA, and each key (state) is the name of a second
#hash, with the keys population density and population. STATE DATA
#is a hash, and it's scope is code following the require_relative
#line in my_solution, as well as the state_data file.

#Private Methods
#Private methods are only accessible within the scope of the object,
#so outside of the class method, the private methods cannot be called
#. However, they can be called internally, as seen in the
#virus_effects method.

require_relative 'state_data'

class VirusPredictor

  #initialize the state, population density, and population data
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @ranking = 1
  end

  #Call the predicted deaths and Speed of Spread functions
  def virus_effects
    density_ranking
    predicted_deaths
    speed_of_spread
  end

  private

  #Calculate number of deaths as a function of population and population density, and print the number of deaths.

  def density_ranking
    if @population_density >= 200
      @ranking = 4
    elsif @population_density >= 150
      @ranking = 3
    elsif @population_density >= 100
      @ranking = 2
    elsif @population_density >= 50
      @ranking = 1
    else
      @ranking = 0.5
    end
  end


  def predicted_deaths
    # predicted deaths is solely based on population density

    number_of_deaths = (@population * @ranking/10).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Calculate the speed of spread as a function of population density, and print the speed of spread.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @ranking
    when 4
      speed += 0.5
    when 3
      speed += 1
    when 2
      speed += 1.5
    when 1
      speed += 2
    when 0.5
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

#RELEASE 5
STATE_DATA.each {|key, value|
  key = VirusPredictor.new(key, value[:population], value[:population_density])
  key.virus_effects
}

#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
#The two types of syntax are implicit and using symbols. They work
#the same, however, symbols take up less space so are more efficient.#They are also a bit cleaner to read.

#What does require_relative do? How is it different from require?
# require_relative: Links to state_data file for
#inputs. Relative means the file is in a relative path to the
#current ruby file.

#What are some ways to iterate through a hash?
#Ruby has variations on the each method to iterate through and avoid using loops. There are variations of each available, including each_key, each_pair, and each_value, depending on what you want to iterate over.
#When refactoring virus_effects, what stood out to you about the variables, if anything?
#Repetition in calling variables can be reduced by using case statements. The functions are both dependent on the same kinds of rankings of population density, so the calculations can be reduced while maintaining separate methods.

#What concept did you most solidify in this challenge?
#The idea of private methods - something clicked this time and it #made a lot more sense than it did before.
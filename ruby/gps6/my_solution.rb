# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative looks up the file name in the local directory.
# It is analogous to copying/importing the data in that file and
# pasting it in the current file.  Require looks up the full path
# in the Ruby file-tree.

require_relative 'state_data'

class VirusPredictor
  # runs when an instance of VirusPredictor is create and takes
  # and sets the three parameters to those instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # a way to call those two methods with those specific arguments
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # evaluates the population_density and then executes a 
  # calculation and prints out first half of message
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      death_factor = 0.4
    elsif @population_density >= 150
      death_factor = 0.3
    elsif @population_density >= 100
      death_factor = 0.2
    elsif @population_density >= 50
      death_factor = 0.1
    else
      death_factor = 0.05
    end
    number_of_deaths = (@population * death_factor).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # evaluates the population_density and increments the speed
  # variable based on that evaluation.  prints second half of 
  # message
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
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

#iterate through each state in STATE_DATA and create a VirusPredictor instance for each state

STATE_DATA.each do |state, data|
  this_state = VirusPredictor.new(state, data[:population_density], data[:population])
  this_state.virus_effects
end




#=======================================================================
# Reflection Section
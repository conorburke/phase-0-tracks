class Puppy
  def initialize
    puts "Initializing new puppy instance..."
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(time)
    time.times do |time|
      puts "Woof!"
    end 
  end
  def roll_over 
    puts "*rolls over*"
  end
  def dog_years(year)
    year *= 7
  end
  def sit
    puts "I am sitting down!"
  end

end


bailey = Puppy.new
bailey.fetch("ball")
bailey.speak(5)
bailey.roll_over
puts bailey.dog_years(5)
bailey.sit
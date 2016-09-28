class Santa
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
     "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance..."
  end
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
end

nick = Santa.new("male", "black")
nick.speak
nick.eat_milk_and_cookies("Chocolate Chip")
p nick
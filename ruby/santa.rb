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

santas = []
genders = ["female", "male", "bigender", "agender", "fluid"]
ethnicities = ["black", "white", "latino", "asian", "other"]

genders.each_index do |counter|
  santas.push(Santa.new(genders[counter], ethnicities[counter]))
end
p santas
class Santa
  attr_reader :ethnicity
  attr_accessor :age, :gender
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
     "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    #puts "Initializing Santa instance..."
  end
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
  def celebrate_birthday
    @age += 1
  end
  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.push(reindeer)
  end
  # def gender=(new_gender)
  #   @gender = new_gender
  # end
  # def age
  #   @age
  # end
  # def ethnicity
  #   @ethnicity
  # end
end
puts "How many santa's do you want to create?"
santa_count = gets.chomp.to_i
genders = ["female", "male", "bigender", "agender", "fluid"]
ethnicities = ["black", "white", "latino", "asian", "other"]

santa_count.times do |counter|
  current_santa = Santa.new(genders.sample, ethnicities.sample)
  current_santa.age = rand(141)
  puts "This santa is #{current_santa.age} years old. "\
  "The gender is #{current_santa.gender} and the ethnicity "\
  "is #{current_santa.ethnicity}."
  # puts current_santa.age
  # puts current_santa.gender
  # puts current_santa.ethnicity
end

# santas = []
# genders = ["female", "male", "bigender", "agender", "fluid"]
# ethnicities = ["black", "white", "latino", "asian", "other"]

# genders.each_index do |counter|
#   santas.push(Santa.new(genders[counter], ethnicities[counter]))
# end
# p santas
# santas[0].speak
# santas[0].eat_milk_and_cookies("sugar")
# santas[0].celebrate_birthday
# santas[0].get_mad_at("Dancer")
# santas[0].gender = "male"
# p santas
# p santas[0].age
# p santas[0].ethnicity
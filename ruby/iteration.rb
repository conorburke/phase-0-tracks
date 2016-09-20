#write own method that takes block and gives status
def print_status
  puts "this is the initial status: "
  yield("middle")
  puts "this is the latest status: " 
end
print_status do |middle|
  puts "This is the #{middle} status."  
end

#add array and hash and use .each and .map on them
animals = ["camel","elephant","tiger"]
football_team = { seattle: "seahawks", cleveland: "browns", baltimore: "ravens" }
animals.each do |animal|
  puts "the name of the animal is #{animal}."
end
football_team.each do |city, team|
  puts "The #{team} are from #{city}."
end
animals.map! do |animal|
  animal.reverse
end
puts animals

#use docs to find methods that satisfy array conditions in release 2
numbers = [0,1,2,3,4,5]
numbers.delete_if {|number| number<3}
numbers = [0,1,2,3,4,5]
numbers.keep_if {|number| number<3}
numbers = [0,1,2,3,4,5]
numbers.select! {|number| number<3}
numbers = [0,1,2,3,4,5]
numbers2 = numbers.take_while {|number| number<3}

#use docs to find methods that satisfy hash conditions in release 2
num_letters = {1 => "one", 2 => "two",3 =>"three", 4 => "four"}
num_letters.delete_if {|num, letter| num >2 }
num_letters = {1 => "one", 2 => "two",3 =>"three", 4 => "four"}
num_letters.select! {|num,letter| letter.length > 3}
num_letters = {1 => "one", 2 => "two",3 =>"three", 4 => "four"}
num_letters.keep_if {|num, letter| letter.length <= 4}
num_letters = {1 => "one", 2 => "two",3 =>"three", 4 => "four"}
num_letters.reject! {|num,letter| num < 3}
puts num_letters
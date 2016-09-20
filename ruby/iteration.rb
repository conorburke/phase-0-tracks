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
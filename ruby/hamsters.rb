puts "What is the hamster's name?"
name = gets.chomp
puts "What is the hamster's volume level (1-10)?"
name = gets.chomp.to_i
puts "What is the fur color?"
color = gets.chomp
puts "Is the hamster a good or bad candidate for adoption?"
candidate = gets.chomp
puts "What is the hamster's age?"
age = gets.chomp.to_i
if age == ""
  age = nil
end

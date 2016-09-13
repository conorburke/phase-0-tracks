puts "What is the hamster's name?"
name = gets.chomp
puts "What is the hamster's volume level (1-10)?"
volume = gets.chomp.to_i
puts "What is the fur color?"
color = gets.chomp
puts "Is the hamster a good or bad candidate for adoption?"
candidate = gets.chomp
puts "What is the hamster's age?"
age = gets.chomp
if age== ""
  age = nil
  print_age = "unknown"
else
  age = age.to_i
  print_age = age
end
puts "The hamster's name is #{name} and has a volume of #{volume}.
The fur color is #{color} and the hamster is a #{candidate} 
candidate for adoption. The hamster's age is #{print_age}."
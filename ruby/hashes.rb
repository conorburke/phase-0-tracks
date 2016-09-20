=begin 
Pseudocode a program that puts designer input into a hash
-initialize a hash called client with inputs from designer
  -include name, age, children, them, married, rural, false, area
  -set default values for each item
-use driver code to prompt driver for info
  -use gets.chomp to get information
  -use hash[key] annotation to input into hash
    -convert datatypes as necessary
-print hash with info for review
  -allow user to update a key or type none
-print updated version with any corrected errors
-exit program
=end

client = {
  name: "",
  age: 0,
  num_children: 0,
  decor_theme: "",
  married: false,
  rural: false,
  area: "",
}

puts "What is the name of the client?"
client[:name] = gets.chomp.to_s
puts "What is the age of the client?"
client[:age] = gets.chomp.to_i
puts "How many children does the client have?"
client[:num_children] = gets.chomp.to_i
puts "What is the overall decor theme?"
client[:decor_theme] = gets.chomp.to_s
puts "Is the client married (yes or no)?"
married = gets.chomp.to_s.downcase
if married == "yes"
  client[:married] = true
else
  client[:married] = false
end
puts "Will the client be in a rural area (yes or no)?"
rural = gets.chomp.to_s.downcase
if rural == "yes"
  client[:rural] = true
else
  client[:rural] = false
end
puts "What is the city or area the client will be in?"
client[:area] = gets.chomp.to_s

puts client
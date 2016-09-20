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

#initialize client hash
client = {
  name: "",
  age: 0,
  num_children: 0,
  decor_theme: "",
  married: false,
  rural: false,
  area: "",
}

#prompt designer for client info
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

#check with designer that everything is correct
puts "Here is the client info:"
puts client
puts "Are there any mistakes? Please specify which category has"\
"a mistake or simply write 'none'."
error_check = gets.chomp.downcase
if error_check == "none"
  puts "Great!  Here is your client info:"
  puts client
elsif error_check == "name" || error_check == "decor_theme" \
  || error_check == "area"
  puts "What is the correct info?"
  corrected = gets.chomp.to_s
  client[error_check.to_sym] = corrected
  puts "And here is the corrected info:"
  puts client
elsif error_check == "age" || error_check == "num_children"
  puts "What is the correct info?"
  corrected = gets.chomp.to_i
  client[error_check.to_sym] = corrected
  puts "And here is the corrected info:"
  puts client
elsif error_check == "married"
  if client[:married] == true
    client[:married] = false
  else
    client[:married] = true
  end
  puts "And here is the corrected info:"
  puts client  
elsif error_check == "rural"
  if client[:rural] == true
    client[:rural] = false
  else
    client[:rural] = true
  end
  puts "And here is the corrected info:"
  puts client
else
  puts "That was not a type of info.  Here is the client info:"
  puts client
end
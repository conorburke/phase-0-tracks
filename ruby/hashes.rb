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

puts 
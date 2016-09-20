puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
full_name = first_name + " " + last_name
full_name_arr = full_name.split
first_name_arr = full_name_arr.shift
full_name_arr.push(first_name_arr)
full_name = full_name_arr.join(' ')

lower_vowels = ['a', 'e', 'i', 'o', 'u', 'a']
upper_vowels = ['A', 'E', 'I', 'O', 'U', 'A']
spy_array = []

full_name_arr = full_name.chars

full_name_arr.map! do |letter|
  if letter.ord == 32
    spy_array << " "
  elsif letter.ord < 91
    counterA = 0
    loop do
      
      counterA +=1
    end

    spy_array << "~"
  else
    spy_array << "*"
  end

end

p spy_array
















=begin 
Pseudocode the solo challenge for flipping names and forwarding
letters
  -ask user for first name
    -store as string
  -ask user for last name
    -store as string
  -concatenate strings
  -use method to turn string into array of two words
    -use shift and push to reorder array
  -iterate through array of characters to identify them 
    -use reference arrays, next, and ord/chr to adust letters
  -adjust for edge cases
  -change type back into string
  -set up loop for multiple iterations of this process
  -print out results at end
=end
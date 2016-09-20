puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
full_name = first_name + " " + last_name
full_name_arr = full_name.split
first_name_arr = full_name_arr.shift
full_name_arr.push(first_name_arr)
full_name = full_name_arr.join(' ')

#lower_vowels = ['a', 'e', 'i', 'o', 'u', 'a']
#upper_vowels = ['A', 'E', 'I', 'O', 'U', 'A']
spy_array = []

full_name_arr = full_name.chars
p full_name_arr
full_name_arr.map! do |letter|
  if letter.ord == 32
    spy_array << " "
  elsif letter.ord < 91
    case letter.ord
    when 65
      spy_array << "E"
    when 68
      spy_array << "F"
    when 69
      spy_array << "I"
    when 72
      spy_array << "J"
    when 73
      spy_array << "O"
    when 78
      spy_array << "P"
    when 79
      spy_array << "U"
    when 84
      spy_array << "V"
    when 85
      spy_array << "A"
    when 90
      spy_array << "B"
  else
    spy_array << (letter.ord + 1).chr
  end
  elsif letter.ord < 123
    case letter.ord
    when 97
      spy_array << "e"
    when 100
      spy_array << "f"
    when 101
      spy_array << "i"
    when 104
      spy_array << "j"
    when 105
      spy_array << "o"
    when 110
      spy_array << "p"
    when 111
      spy_array << "u"
    when 116
      spy_array << "v"
    when 117
      spy_array << "a"
    when 122
      spy_array << "B"
    else
      spy_array << (letter.ord + 1).chr
    end      
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
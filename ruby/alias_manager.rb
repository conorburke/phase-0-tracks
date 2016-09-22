def alias_maker(first_name, last_name)
  #turn into full name string
  full_name = first_name + " " + last_name
  #turn name into array and take out first name
  full_name_arr = full_name.split
  first_name_arr = full_name_arr.shift
  #add full name to end and turn back into string
  full_name_arr.push(first_name_arr)
  full_name = full_name_arr.join(' ')
  #create empty array to append new values to
  spy_array = []
  #turn string back into array to iterate through each char
  full_name_arr = full_name.chars
  #iterate through and save new character to spy_array
  #use ASCII values to catch all cases
  full_name_arr.each do |letter|
    #for space character
    if letter.ord == 32
      spy_array << " "
    #for uppercase characters  
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
    #for lowercase characters
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
  #turn array into string
  spy_name = spy_array.join
end

uppercase = {
  
}


puts "Welcome to the alias name generator."
#for use with the loop
continue = true
#to keep track of entered names and changed names
alias_tracker = {}
while continue
  #accept user input
  puts "What is your first name?"
  first_name = gets.chomp
  puts "What is your last name?"
  last_name = gets.chomp
  #save unaltered full name to hash
  full_name = first_name + " " + last_name
  spy_name = alias_tracker[full_name] = ""
  spy_name = alias_maker(first_name, last_name)
  #add string to hash
  alias_tracker[full_name] = spy_name
  p "And the alias is #{spy_name}."
  puts "If you would like to quit, type 'quit'. Or, "\
  "just hit enter to enter a new name!"
  answer = gets.chomp.to_s.downcase
  #quit or show hash of names
    if answer == "quit" || answer == "q"
      continue = false
      puts "And here are all the names and aliases!"
      alias_tracker.each do |real_name, alias_name|
        puts "#{alias_name} is really #{real_name}!"
      end
    else
      continue == true
    end
end



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
    -use and ord/chr to adust letters
  -adjust for edge cases
  -change type back into string
  -set up loop for multiple iterations of this process
  -print out results at end
=end
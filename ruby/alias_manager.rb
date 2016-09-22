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
  p full_name_arr
  exceptions = {
  32 => " ",
  65 => "E",
  68 => "F",
  69 => "I",
  72 => "J",
  73 => "O",
  78 => "P",
  79 => "U",
  84 => "V",
  85 => "A",
  90 => "B",
  97 => "e",
  100 => "f",
  101 => "i",
  104 => "j",
  105 => "o",
  110 => "p",
  111 => "u",
  116 => "v",
  117 => "a",
  122 => "b"
}
#exceptions_index = [32,65,68,69,72,73,78,79,84,85,90,97,100,
#  101,104,105,110,111,116,117,122]

  full_name_arr.each do |letter|
    
    if exceptions.has_key?(letter.ord)
      spy_array << exceptions[letter.ord]
    else
      spy_array << (letter.ord + 1).chr
    end
  end
=begin
exceptions2 = {
  " " => 32,
  "E" => 65,
  "F" => 68,
  "I" => 69,
  "J" => 72,
  "O" => 73,
  "P" => 78,
  "U" => 79,
  "V" => 84,
  "A" => 85,
  "B" => 90,
  "e" => 97,
  "f" => 100,
  "i" => 101,
  "j" => 104,
  "o" => 105,
  "p" => 110,
  "u" => 111,
  "v" => 116,
  "a" => 117,
  "b" => 122
}
exceptions3 = {
  " " => " ",
  "A" => "E",
  "D" => "F",
  "E" => "I",
  "H" => "J",
  "I" => "O",
  "N" => "P",
  "O" => "U",
  "T" => "V",
  "U" => "A",
  "Z" => "B",
  "a" => "e",
  "d" => "f",
  "e" => "i",
  "h" => "j",
  "i" => "o",
  "n" => "p",
  "o" => "u",
  "t" => "v",
  "u" => "a",
  "z" => "b"
}
=end


=begin
exceptions_index.each do |check|
  counter = 0
  if check == full_name_arr[counter].ord
    full_name_arr[counter] = exceptions[check]
  end
  counter += 1
end
=end
=begin
  full_name_arr.each do |letter|
    counter = 0
    while counter < exceptions_index.length
      if exceptions_index[counter] == letter.ord
        spy_array << exceptions[exceptions_index[counter]]
        p spy_array
        counter += 1
        break
      else
        spy_array << (letter.ord + 1).chr
        p spy_array 
        break
      end
      counter += 1    
    end
  end
=end
  #turn array into string
  spy_name = spy_array.join
end



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
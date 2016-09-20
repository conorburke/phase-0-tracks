puts "Welcome to the alias name generator."
continue = true
alias_tracker = {}
while continue
  puts "What is your first name?"
  first_name = gets.chomp
  puts "What is your last name?"
  last_name = gets.chomp
  full_name = first_name + " " + last_name
  full_name_tracker = full_name
  alias_tracker[full_name_tracker] = ""
  full_name_arr = full_name.split
  first_name_arr = full_name_arr.shift
  full_name_arr.push(first_name_arr)
  full_name = full_name_arr.join(' ')

  spy_array = []

  full_name_arr = full_name.chars
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
  spy_name = spy_array.join
  alias_tracker[full_name_tracker] = spy_name
  p spy_name
  puts "If you would like to quit, type 'quit'. Or, "\
  "just hit enter to enter a new name!"
  answer = gets.chomp.to_s.downcase
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
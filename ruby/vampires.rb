#challenge 4.4 vampire questionnaire
#ask how many employees will be screened
continue = true
while continue
  puts "How many employees will be processed?"
  number_employees = gets.chomp.to_i
    if number_employees > 0
      continue = false
    else
      puts "Enter a positive number"
    end
end
counter = 0
until counter == number_employees
  #ask four intro questions
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  birth_year = gets.chomp.to_i
  #check current year and check if age is equal to current year less birth year
  current_year = Time.new.year
  if (current_year - birth_year) == age
    correct_age = true
  else
    correct_age = false
  end
  puts "Should we order some garlic bread for you?"
  garlic_bread = gets.chomp.downcase
    if garlic_bread == "yes"
      order_bread = true
    else
      order_bread = false
    end
  puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp.downcase
    if insurance == "yes"
      buy_insurance = true
    else
      buy_insurance = false
    end
  #add list for allergies
  puts "Do you have any allergies to list?"
  allergies = gets.chomp.downcase
  if allergies == "yes"
    add_allergies = true
    while add_allergies 
      puts "Enter an allergy one by one.  Enter 'done' when finished."
      allergy = gets.chomp.downcase
      if allergy == "sunshine"
        conclusion = "Probably a vampire."
        add_allergies = false
        sunshine = true
      elsif allergy == "done"
        add_allergies = false
      end
    end
  end
  #check conditionals to determine if vampire 
  if sunshine != true
    conclusion = String.new
    if correct_age && (order_bread || buy_insurance)
      conclusion = "Probably not a vampire."
    elsif correct_age == false && (order_bread == false || 
      buy_insurance == false)
      conclusion = "Probably a vampire."
    end
    if correct_age == false && order_bread == false && 
      buy_insurance == false
      conclusion = "Almost certainly a vampire."
    end
    if name == "Drake Cula" or name == "Tu Fang" 
      conclusion = "Definitely a vampire."
    end
    if conclusion == ""
      conclusion = "Results inconclusive."
    end
  end
  puts conclusion
  counter += 1
  sunshine = false
end

puts "Actually, never mind! What do these questions have to do with anything? 
Let's all be friends."
    


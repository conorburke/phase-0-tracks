#challenge 4.4
#vampire questionnaire
puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birth_year = gets.chomp.to_i
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
#check conditionals to determine if vampire 



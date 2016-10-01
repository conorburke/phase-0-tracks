require 'io/console'

class WordGuess
  attr_reader :guess_count, :level

  def initialize(word, level)
    @word = word
    if level == "easy"
      @level = 10
    elsif level == "medium"
      @level = 5
    else
      @level = 3
    end 
    @guess_count = word.length + @level
    @blanks = "-" * word.length
  end

  def show
    puts "\"" + @blanks + "\"" 
  end

  def leveldiff
    if @level == 10
      "easy"
    elsif @level == 5
      "medium"
    else
      "hard"
    end
  end

  def check_letter(letter)
    counter = 0
    @word.each_char do |l|
      if l == letter.downcase or l == letter.upcase
        @blanks[counter] = @word[counter]
        @guess_count += 1
        if @blanks == @word
          puts "Congrats. You win! The word was #{@word}!"
          exit
        end
      end
      counter += 1    
    end
    @guess_count -= 1
    show
  end

end


#user interface
puts "Welcome to the Word Guess game! User 1, please"\
     " enter a word:"
continue = true
counter = 0
while continue
  input = STDIN.noecho(&:gets).chomp
  input.each_char do |c|
    if /[^A-Za-z]/.match(c)
      counter += 1
    end
  end
  if counter > 0
    puts "Some of those were not letters. Try again."
  else
    continue = false
  end
  counter = 0
end
puts "*" * input.length
puts "User 2, what level would you like? Enter easy,"\
   " medium, or hard."
difficulty = gets.chomp.downcase
word = WordGuess.new(input, difficulty)
puts "The word is #{input.length} letters long and "\
     "the difficulty is #{word.leveldiff} so you have "\
     "#{input.length + word.level} guesses!"
word.show
guess_tracker = []
while word.guess_count > 0
  puts "Guess a letter:"
  letter = gets.chomp.slice(0)
  if /[A-Za-z]/.match(letter)
    unless guess_tracker.include?(letter.downcase)
      word.check_letter(letter)
      puts "You have #{word.guess_count} "\
           "left."
    else 
        puts "You already guessed that. Try again."
    end
    guess_tracker.push(letter.downcase)
  else
    puts "Not a letter."
  end
end
puts "You used all your guesses! You are a loser!"

# Word Guess Game

# -message appears welcoming users and asking for their names
# -user one enters a word
#   -computer takes word and saves it
# -user two attempts to guess word
#   -has a certain multiple of the letters for guesses
#     -this will adjust difficulty
#       -difficulty is set at beginning
#     -if they guess same letter, that does not affect guess
#     -a letter counts as uppercase and lowercase
#   -after each guess, the word is displayed
#   -after they guess win, congratulatory message
#     -or taunting message if they lose
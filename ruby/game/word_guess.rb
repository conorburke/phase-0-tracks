class WordGuess
  attr_reader :guess_count, :guesses

  def initialize(word, level)
    @word = word
    @level = level
    @guess_count = 0
    @game_over = false
    @guesses = word.length * level
    @blanks = "-" * word.length
  end

  def show
    puts "\"" + @blanks + "\"" 
  end

  def leveldiff
    if @level == 4
      puts "The level is easy."
    elsif @level == 3
      puts "The level is medium."
    else
      puts "The level is hard."
    end
  end

  def check_letter(letter)
    counter = 0
    @guess_count += 1
    @word.each_char do |l|
      if l == letter
        @blanks[counter] = letter
        show
        counter += 1
      else
        counter += 1
      end    
    end
  end

end


#user interface
puts "Welcome to the Word Guess game! User1, please"\
     " enter a word:"
input = gets.chomp
continue = true
while continue
  puts "What level would you like? Enter easy, medium"\
     " or hard."
  difficulty = gets.chomp
  if difficulty == "easy".downcase
    difficulty = 4
    continue = false
  elsif difficulty == "medium".downcase
    difficulty = 3
    continue = false
  elsif difficulty == "hard".downcase
    difficulty = 2
    continue = false
  else
    puts "Level not recognized.  Please enter easy"\
         " ,medium, or hard."
  end
end
continue = false
word = WordGuess.new(input, difficulty)
word.show
word.leveldiff
puts word.guesses
word.check_letter("e")






















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
class WordGuess
  attr_reader :guess_count, :guesses

  def initialize(word, level)
    @word = word
    @level = level
    @guess_count = 0
    @guesses = word.length * level
    @blanks = "-" * word.length
  end

  def show
    puts "\"" + @blanks + "\"" 
  end

  def leveldiff
    if @level == 4
      "easy"
    elsif @level == 3
      "medium"
    else
      "hard"
    end
  end

  def check_letter(letter)
    counter = 0
    @guess_count += 1
    if @guess_count < @guesses
      @word.each_char do |l|
        if l == letter.downcase or l == letter.upcase
          @blanks[counter] = letter
          show
          counter += 1
          if @blanks == @word
            puts "Congrats. You win!"
            exit
          end
        else
          counter += 1
        end    
      end
    else
      puts "You are a loser!"
      exit
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
word = WordGuess.new(input, difficulty)
puts "The word is #{input.length} letters long and "\
     "the difficulty is #{word.leveldiff} so you have "\
     "#{input.length * difficulty} guesses!"
word.show
counter = 0
guess_tracker = []
while counter < word.guesses
  puts "Guess a letter:"
  letter = gets.chomp
  guess_tracker.each do |l|
    if letter.downcase == l 
      puts "You already guessed that. Try again."
    else
      word.check_letter(letter)
    end
  end
  counter += 1
  guess_tracker.push(letter.downcase)
end






















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
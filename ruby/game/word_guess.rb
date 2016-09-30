class WordGuess


  def initialize(word)
    @word = word
  end

  def display
    length = @word.length
    puts "\"" + "-"*length + "\""
  end

end


#user interface
puts "Welcome to the Word Guess game! User1, please"\
     " enter a word:"
input = gets.chomp
word = WordGuess.new(input)
word.display























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
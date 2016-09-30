require_relative 'word_guess'

describe WordGuess do
  let (:word) { WordGuess.new("Testing")}

  it "displays the current guess status of the word" do
    word.display
    expect(word.display).to eq "\"-------\""
  end



end
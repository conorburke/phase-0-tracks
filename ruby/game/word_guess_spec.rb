require_relative 'word_guess'

describe WordGuess do
  let (:word) { WordGuess.new("Testing", 2) }

  it "displays the current guess status of the word" do
    word.show
    expect(word.show).to eq "-------"
  end

  it "shows the current difficulty" do
    word.leveldiff
    expect(word.leveldiff).to eq "The level is hard."
  end


end
require_relative 'word_guess'

describe WordGuess do
  let (:word) { WordGuess.new("Testing", "easy") }

  it "displays the current guess status of the word" do
    word.show
    expect(word.show).to eq "-------"
  end

  it "shows the current difficulty" do
    word.leveldiff
    expect(word.leveldiff).to eq 10
  end

  it "checks letter and returns word" do
    word.check_letter("e")
    expect(word.check_letter("e")).to eq "-e-----"
  end

end
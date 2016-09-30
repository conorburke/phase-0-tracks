require_relative 'word_guess'

describe WordGuess do
  let (:word) { WordGuess.new("Testing", 2) }

  it "displays the current guess status of the word" do
    word.show
    expect(word.show).to eq "-------"
  end

  it "shows the current difficulty" do
    expect(word.leveldiff).to eq nil
  end

  it "checks letter and returns word" do
    word.checkletter("e")
    expect(word.checkletter("e")).to eq "-e-----"
  end


end
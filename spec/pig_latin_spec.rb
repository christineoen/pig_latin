require 'spec_helper'

describe 'Pig Latin' do
  
  it "Returns an error if the string is not a word" do
    
    expect(PigLatin.translate 0).to eq("That's not a word.")
  end

  it "adds way to the word if it starts with a vowel" do
    
    expect(PigLatin.translate 'egg').to eq("eggway")
  end

  it "ends in the two consonants plus 'ay' if the word starts with two consonants" do
    
    expect(PigLatin.translate 'steve').to eq("evestay")
  end

  it "moves the first letter to the end of the word plus 'ay' if the first letter of a word is a consonant" do
    
    expect(PigLatin.translate 'yellow').to eq("ellowyay")
  end

end
require "pig_latin/version"

module PigLatin
  def self.translate word
  alphabet=('a'..'z').to_a
  vowels=['a','e','i','o','u']
  consonants= alphabet - vowels
    if vowels.include?(word[0])
      word + "way"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1]+ "ay"
    elsif consonants.include?(word[0])
      word[1..-1] + word[0]+ "ay"
    else
      p "That's not a word."     
    end
  end
end

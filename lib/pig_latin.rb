require "pig_latin/version"

module PigLatin

  def self.translate(word)
    return "That's not a word." if !word.is_a? String

    if /\A[y]/.match(word) == "y"
      word[1..-1] + "yay"
    elsif /\A[^a,e,i,o,u]/.match(word) != nil && /\A[^a,e,i,o,u]/.match(word[1..-1]) != nil
      word[2..-1] + word[0..1] + "ay"
    elsif /\A[^a,e,i,o,u]/.match(word) != nil
      word[1..-1] + word[0] + "ay"
    elsif /\A[^a,e,i,o,u]/.match(word) == nil
      word + "way"
    else
      return "Error"
    end
  end

end

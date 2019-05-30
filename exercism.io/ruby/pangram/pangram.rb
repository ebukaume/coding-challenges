module Pangram
  NUMBER_OF_ENGLISH_ALPHABET = 26
  def self.pangram?(sentence)
    sentence.downcase.scan(/[a-z]/).uniq.length == NUMBER_OF_ENGLISH_ALPHABET
  end
end
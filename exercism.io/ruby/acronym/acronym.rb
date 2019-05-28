module Acronym
  def self.abbreviate(phrase)
    phrase.gsub!("-", " ")
    phrase.split().map { |word| word[0].upcase() }.join
  end
end
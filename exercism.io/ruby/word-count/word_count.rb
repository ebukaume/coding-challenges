class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    @word_count ||= words.each_with_object(Hash.new(0)) { |word, counts| counts[word.downcase] += 1 }
  end

  private

  def words
    phrase.scan(/\b[\w']+\b/)
  end
end
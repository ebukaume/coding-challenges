class HighScores
  attr_reader :scores, :latest, :personal_best, :personal_top_three
  def initialize(scores)
    @scores = scores
    @latest = scores[-1]
    @personal_top_three = scores.sort { |left, right| right <=> left }[0..2]
    @personal_best = personal_top_three[0]
  end
end
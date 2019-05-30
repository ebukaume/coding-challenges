class HighScores
  attr_reader :scores, :latest, :personal_best, :personal_top_three
  def initialize(scores)
    @scores = scores
    @latest = scores.last
    @personal_top_three = scores.max(3)
    @personal_best = personal_top_three.max
  end
end

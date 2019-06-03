class Matrix

  def initialize(string_matrix)
    @string_matrix = string_matrix
  end

  def rows
    @rows ||= transform
  end

  def columns
    rows.transpose
  end

  private

  def transform
    @string_matrix.lines.map { |line| line.split.map(&:to_i) }
  end
end

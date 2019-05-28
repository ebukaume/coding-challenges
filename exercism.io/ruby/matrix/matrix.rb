class Matrix
  attr_reader :rows, :columns

  def initialize(lines)
    matrix = transform(lines)
    @rows = matrix[:rows]
    @columns = matrix[:colums]
  end

  private
  def transform(lines)
    rows = []
    colums = []
    lines.split("\n").map do |line|
      rows << line.split().map { |digit| digit.to_i }
    end
    p rows
    0.upto(rows[0].length - 1) do |idx|
      temp = []
      0.upto(rows.length - 1) do |x|
        temp << rows[x][idx]
      end
      colums << temp
    end
    {rows: rows, colums: colums}
  end
end

m = Matrix.new("1 2 3\n4 5 6\n7 8 9\n 8 7 6")
puts ""
p m.rows
p m.columns
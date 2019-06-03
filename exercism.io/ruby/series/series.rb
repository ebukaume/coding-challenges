class Series
  def initialize(string)
    @string = string
  end

  def slices(num)
    max = @string.length
    raise ArgumentError, "Argument greater than length of string: #{max}" if num > max
    @string.each_char.each_cons(num).map{|x| x.join}
  end
end

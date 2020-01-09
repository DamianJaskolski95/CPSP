class ParserCounter
  @array = []

  def initialize(arr)
    @array = arr
  end

  def count_visits
    b = Hash.new(0)
    @array.each { |line| b[line.first] += 1 }
    b.to_a
  end
end

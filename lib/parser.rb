def count_visits(a)
  b = Hash.new(0)
  a.each { |line| b[line.first] += 1 }
  b.to_a
end

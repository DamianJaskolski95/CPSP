require './lib/parser'

if ARGV.empty?
  file = File.open('webserver.log', 'r')
else
  if File.exist?(ARGV[0])
    file = File.open(ARGV[0])
  else
    puts 'File does not exist'
    return 0
  end
end

splitted = []
file.each { |line| splitted.push(line.split(' ')) }

parser_object = ParserCounter.new(splitted)

sorted_visits = parser_object.sort_visits(parser_object.count_visits)
sorted_uniq_visits = parser_object.sort_visits(parser_object.count_uniq_visits)

puts 'Sorted array of visits'
sorted_visits.each { |line| print "#{line.first} -> #{line.last}\n" }

puts "\nSorted array of unique visits"
sorted_uniq_visits.each { |line| print "#{line.first} -> #{line.last}\n" }

puts "\n"

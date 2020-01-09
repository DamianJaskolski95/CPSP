require './lib/parser'

file = File.open('webserver.log', 'r')

splitted = []
file.each { |line| splitted.push(line.split(' ')) }

parser_object = ParserCounter.new(splitted)

puts "\nSorted array of visits"
print parser_object.sort_visits(parser_object.count_visits)

puts "\nSorted array of unique visits"
print parser_object.sort_visits(parser_object.count_uniq_visits)

puts "\n"

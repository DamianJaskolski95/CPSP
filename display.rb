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

puts "Sorted array of visits"
print parser_object.sort_visits(parser_object.count_visits)

puts "\nSorted array of unique visits"
print parser_object.sort_visits(parser_object.count_uniq_visits)

puts "\n"

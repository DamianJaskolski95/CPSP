require './lib/parser'

if ARGV.empty?
  file = File.open('webserver.log', 'r')
else
  if File.exist?(ARGV[0])
    file = File.open(ARGV[0], 'r')
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
sorted_ip_visits = parser_object.sort_visits(parser_object.count_ip)

puts 'Sorted array of visits'
sorted_visits.each do |line|
  print "#{line.first} -> #{line.last} visits\n"
end

puts "\nSorted array of unique visits"
sorted_uniq_visits.each do |line|
  print "#{line.first} -> #{line.last} unique visits\n"
end

puts "\nSorted array of ip visits"
sorted_ip_visits.each do |line|
  print "#{line.first} -> #{line.last} visits\n"
end

puts "\nSearch visits by ip"
address = gets.chomp
ip_output = parser_object.search_ip(address)
ip_output.each { |ip| puts ip }

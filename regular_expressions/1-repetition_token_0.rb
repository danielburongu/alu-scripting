#!/usr/bin/env ruby
# Using one command line argument
string = ARGV[0]
puts ARGV[0].scan(/hbt{2,5}n/).join
# regular expression used to match the string
regex = /your-regex-here/

# Using the `match` method to check whether the string matches the regular expression
if string.match(regex)
  puts "hbtttn"
else
  puts "hbttn"
end
ruby regex_match.rb "hbttn"

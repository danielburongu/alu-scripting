#!/usr/bin/env ruby
# Using one command line argument
string = ARGV[0]

# regular expression used to match the string
regex = /your-regex-here/

# Using the `match` method to check whether the string matches the regular expression
if string.match(regex)
  puts "hbttttttn"
else
  puts "hbtttn"
end
ruby regex_match.rb "hbttn"

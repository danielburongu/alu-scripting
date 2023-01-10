#!/usr/bin/env ruby
# Using one command line argument
string = ARGV[0]

# regular expression used to match the string
regex = /your-regex-here/

# Using the `match` method to check whether the string matches the regular expression
if string.match(regex)
  puts "Holberton School is so cool!"
else
  puts "Holberton School is not cool."
end
ruby regex_match.rb "Holberton_School_is_so_cool!"

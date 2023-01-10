#!/usr/bin/env ruby
# Using one command line argument
string = ARGV[0]

# the regular expression used to match
regex = /your-regex-here/

# applying the `match` method to check whether the string matches the regular expression
if string.match(regex)
  puts "got holberton!"
else
  puts "did not get."
end
ruby regex_match.rb "holberton"

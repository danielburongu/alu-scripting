#!/usr/bin/env ruby
# Uisng one command line argument
string = ARGV[0]

# the regular expression
regex = /\d{10}/

# applying the `match` method to check whether the string matches the regular expression
if string.match(regex)
  puts "4155049898"
else
  puts ""
end
ruby regex_match.rb " 4155049898 "

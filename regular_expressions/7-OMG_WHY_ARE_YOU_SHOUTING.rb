#!/usr/bin/env ruby
# using one command line argument
string = ARGV[0]

# the regular expression
regex = /^[A-Z]+$/

# applying the `match` method to check whether the string matches the regular expression
if string.match(regex)
  puts "capital letters found!"
else
  puts "capital letters not found."
end
ruby regex_match.rb "OMG_WHY_ARE_YOU_SHOUTING"

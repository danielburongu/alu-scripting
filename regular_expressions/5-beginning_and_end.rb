#!/usr/bin/env ruby
# using the command line argument
string = ARGV[0]

#the regular expression
regex = /^h.n$/

# applying the `match` method to check whether the string matches the regular expression
if string.match(regex)
  puts "hhn"
else
  puts "h9n"
end
ruby regex_match.rb "Hhn"

#!/usr/bin/env ruby
# Uisng one command line argument
string = ARGV[0]

# the regular expression
regex = /\d{10}/

# applying the `match` method to check whether the string matches the regular expression
if string.match(regex)
  puts "phone number found!"
else
  puts "phone number not found."
end
ruby regex_match.rb "this is a phone number  4155049898 "

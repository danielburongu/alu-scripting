#!/usr/bin/env ruby
# using one command line argument
string = ARGV[0]

# the regular expression being used
regex = /your-regex-here/

# applying  the `match` method to check whether the string matches the regular expression
if string.match(regex)
  puts "hbn"
else
  puts "hbt"
end
ruby regex_match.rb "hbtn"

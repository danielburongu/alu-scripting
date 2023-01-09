#!/usr/bin/env ruby
# The first argument passed to the script in a variable
input = ARGV[0]

# Creating a regular expression to match the word "School"
regex = /School/

# Applying the match method to check if the input matches the regular expression
if input.match(regex)
  puts "School"
else
  puts 
end
ruby script.rb "SchoolSchool"

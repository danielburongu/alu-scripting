#!/usr/bin/env ruby
# Uisng one command line argument
# the regular expression
# applying the `scan and join` method to check whether the string matches the regular expression
puts ARGV[0].scan(/^\d{10}$/).join

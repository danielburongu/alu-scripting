#!/usr/bin/env ruby
# Using one command line argument
puts ARGV[0].scan(/hbt{2,5}n/).join
# regular expression used to match the string
# Using the `scan` method to check whether the string matches the regular expression


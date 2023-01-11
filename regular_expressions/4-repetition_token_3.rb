#!/usr/bin/env ruby
# using one command line argument
# the regular expression
# applying the `scan` method to check whether the string matches the regular expression
puts ARGV[0].scan(/hbt{0,10}n/).join

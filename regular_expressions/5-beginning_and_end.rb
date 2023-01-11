#!/usr/bin/env ruby
# using the command line argument
#the regular expression
# applying the `scan and join` method to check whether the string matches the regular expression
puts ARGV[0].scan(/h.n/).join

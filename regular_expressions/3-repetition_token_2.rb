#!/usr/bin/env ruby
# using one command line argument
# the regular expression being used
# applying  the `scan` method to check whether the string matches the regular expression
puts ARGV[0].scan(/hbt{1,5}n/).join

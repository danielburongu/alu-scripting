#!/usr/bin/env ruby
#  the command line argument
transaction = ARGV[0]

# using the regular expressions to match the sender, receiver, and flags
sender_regex = /sender:([+\d\s\w]+)/
receiver_regex = /receiver:([+\d\s\w]+)/
flags_regex = /flags:([\w\s]+)/

# Applying the `match` method to match whether the regular expressions to the transaction string
sender = transaction.match(sender_regex)[1]
receiver = transaction.match(receiver_regex)[1]
flags = transaction.match(flags_regex)[1]

# Output of the sender, receiver, and flags information
puts "[#{sender}],[#{receiver}],[#{flags}]"
ruby extract_info.rb "sender:14137289325,14136574237,-1:0:-1:-1:-1 receiver:+17654650874,+15635593023,-1:0:-1:0:-1 flags:urgent important"

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
ruby extract_info.rb "sender:+1234567890 receiver:+0987654321 flags:urgent important"

#!/usr/bin/env ruby
#  the command line argument
transaction = ARGV[0]

# using the regular expressions to match the sender, receiver, and flags
regex =puts ARGV[0].scan(/from:(.*?)\]\s\[to:(.*?)\]\s\[flags:(.*?)\]/).join(",")
# Applying the `match` method to match whether the regular expressions to the transaction string
sender = transaction.match(sender_regex)[1]
receiver = transaction.match(receiver_regex)[1]
flags = transaction.match(flags_regex)[1]

# Output of the sender, receiver, and flags information

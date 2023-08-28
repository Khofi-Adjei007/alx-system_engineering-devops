#!/usr/bin/env ruby
# This script extracts information from a message and outputs the sender, receiver, and flags.
# It takes into account sender's phone number or name (including country code if present),
# receiver's phone number or name (including country code if present), and the flags used.

# Explanation of placeholders:
# - [SENDER]: Placeholder for the sender's phone number or name (including country code if present).
# - [RECEIVER]: Placeholder for the receiver's phone number or name (including country code if present).
# - [FLAGS]: Placeholder for the flags used in the message.


puts ARGV[0].scan(/(?<=from:|to:|flags:)[^\]]*/).join(',')
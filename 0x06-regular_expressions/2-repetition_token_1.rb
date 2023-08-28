#!/usr/bin/env ruby

# Originator : Khofi ADjei
# This script takes a command line argument
# and searches for occurrences of the pattern "hb?t?n".
# The pattern matches strings that start with 'h', followed
# by an optional 'b', an optional 't', and ending with 'n'.
# It then prints the matched occurrences by joining them into a single string.

puts ARGV[0].scan(/hb?t?n/).join
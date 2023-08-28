#!/usr/bin/env ruby

# This script takes a command line argument and searches for occurrences of the pattern "[S]chool".
# It then prints the matched occurrences by joining them into a single string.

puts ARGV[0].scan(/[S]chool/).join
  
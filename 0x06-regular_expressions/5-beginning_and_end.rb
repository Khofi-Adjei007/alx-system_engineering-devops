#!/usr/bin/env ruby

# This script takes a command line argument and searches for occurrences of the pattern "^h.n$".
puts ARGV[0].scan(/^h.n$/).join
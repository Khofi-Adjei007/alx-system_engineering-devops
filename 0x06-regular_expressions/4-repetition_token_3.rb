#!/usr/bin/env ruby

# This script takes a command line argument and searches for occurrences of the pattern "hb[t]*n".
puts ARGV[0].scan(/hb[t]*n/).join
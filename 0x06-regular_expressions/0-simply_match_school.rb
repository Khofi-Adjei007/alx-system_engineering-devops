#!/usr/bin/env ruby

# This script takes a command line argument and searches for occurrences of the pattern "[S]chool".
puts ARGV[0].scan(/[S]chool/).join
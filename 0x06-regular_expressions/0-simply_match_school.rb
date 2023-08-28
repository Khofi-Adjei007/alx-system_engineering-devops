#!/usr/bin/env ruby
# This script takes a command line argument and searches for occurrences of the pattern "[S]chool".
#Auth: Khofi Adjei Kingsford
puts ARGV[0].scan(/School/).join
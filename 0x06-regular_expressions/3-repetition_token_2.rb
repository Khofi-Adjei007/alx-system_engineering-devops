#!/usr/bin/env ruby
#Originator - Khofi Adjei

# This script takes a command line argument and searches for occurrences of the pattern "hbt+n".
# It then prints the matched occurrences by joining them into a single string.

# Access the command line arguments using the ARGV array, and select the first argument.
# Apply the regular expression scan method to find all occurrences of the pattern "hbt+n".
# Store the matches in an array.
puts ARGV[0].scan(/hbt+n/).join
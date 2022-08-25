#!/usr/bin/env ruby
#finds all text files, .txt in file manager

puts ARGV[0].scan(/^.*\.txt$/).join



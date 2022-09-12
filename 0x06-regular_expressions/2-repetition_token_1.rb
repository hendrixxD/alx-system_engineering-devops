#!/usr/bin/env ruby
#match any string: hbtn, no repeatition of any.

puts ARGV[0].scan(/hb?tn/).join

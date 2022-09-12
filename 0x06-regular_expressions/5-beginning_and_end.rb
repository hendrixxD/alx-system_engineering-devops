#!/usr/bin/env ruby
#matches any string that start with h and ends with n

puts ARGV[0].scan(/h.n/).join

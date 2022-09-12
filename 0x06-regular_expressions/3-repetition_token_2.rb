#!/usr/bin/env ruby
#matches any string: hbtn but not hbn, where t>1 and t<=5

puts ARGV[0].scan(/hbt+n/).join

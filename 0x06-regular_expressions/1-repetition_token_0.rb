#!/sr/bin/env ruby
#match hbtn, where t must be greater than 1 and less <= 5

puts ARGV[0].scan(/hbt{2,5}n/).join

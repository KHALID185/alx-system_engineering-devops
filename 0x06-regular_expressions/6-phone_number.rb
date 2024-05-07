#!/usr/bin/env ruby
# A regular expression for phone
puts ARGV[0].scan(/^[0-9]{10}$/).join

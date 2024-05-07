#!/usr/bin/env ruby
#advanced task
puts ARGV[0].scan(/\[from:(.*)\] \[to:(.*)\] \[flags:(.*?)\]/).join(",")

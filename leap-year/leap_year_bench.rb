require "benchmark"
require "./leap_year"

n = 10_000_000
Benchmark.bm do |x|
  x.report { n.times { Year.leap?(rand(1..2400)) } }
end

# require "benchmark"
# require "date"
#
# n = 10_000_000
# Benchmark.bm do |x|
#   x.report { n.times { Date.leap?(rand(1..2400)) } }
# end

require "benchmark"
require "./hamming"

n = 1_000_000
Benchmark.bm do |x|
  x.report { n.times { Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT') } }
end

# require "benchmark"
# require "date"
#
# n = 10_000_000
# Benchmark.bm do |x|
#   x.report { n.times { Date.leap?(rand(1..2400)) } }
# end

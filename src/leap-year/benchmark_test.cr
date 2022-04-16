require "benchmark"
require "./leap_year"

n = 10_000_000
Benchmark.bm do |x|
  x.report { n.times { Year.leap?(rand(1..2400)) } }
end

Benchmark.ips(warmup: 4, calculation: 10) do |x|
  x.report("Year.leap?") { Year.leap?(rand(1..2400)) }
end

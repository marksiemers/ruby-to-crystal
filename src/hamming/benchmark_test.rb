require "benchmark"
require "benchmark/ips"
require_relative "./hamming"

n = 1_000_000
Benchmark.bm do |x|
  x.report { n.times { Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT') } }
end

Benchmark.ips(2,1) do |x|
  x.report("Hamming.compute") { Hamming.compute("GGACGGATTCTG", "AGGACGGATTCT") }
end

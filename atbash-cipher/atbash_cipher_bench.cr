require "benchmark"
require "./atbash_cipher"

n = 1_000_000
Benchmark.bm do |x|
  x.report { n.times { Atbash.encode("The quick brown fox jumps over the lazy dog.") } }
end

Benchmark.ips do |x|
  x.report("Hamming.compute") { Atbash.encode("The quick brown fox jumps over the lazy dog.") }
end

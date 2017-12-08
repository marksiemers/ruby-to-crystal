require "./requirements"

a_million_numbers_range = (1_u64..1_000_000_u64)
a_million_numbers_array = (1_u64..1_000_000_u64).to_a
random_numbers_array = Array.new(10_000) { rand(-100_000_i64..100_000_i64) }

pp a_million_numbers_range.reduce{|sum,num| sum + num }
pp a_million_numbers_array.reduce{|sum,num| sum + num }
pp random_numbers_array.reduce{|sum,num| sum + num }

n = 100
Benchmark.bm do |x|
  x.report { n.times { a_million_numbers_range.reduce{|sum,num| sum + num } } }
  x.report { n.times { a_million_numbers_array.reduce{|sum,num| sum + num } } }
  x.report { n.times { random_numbers_array.reduce{|sum,num| sum + num } } }
end

Benchmark.ips(2,1) do |x|
  x.report("a_million_numbers_range.reduce") { a_million_numbers_range.reduce{|sum,num| sum + num } }
  x.report("a_million_numbers_array.reduce") { a_million_numbers_array.reduce{|sum,num| sum + num } }
  x.report("random_numbers_array.reduce") { random_numbers_array.reduce{|sum,num| sum + num } }
end

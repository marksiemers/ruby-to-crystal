require "benchmark"
require "pp"

a_million_numbers_range = (1..1_000_000)
a_million_numbers_array = (1..1_000_000).to_a
random_numbers_array = Array.new(10_000) { rand(-100_000..100_000) }

pp a_million_numbers_range.map{|num| num * num }.last(2)
pp a_million_numbers_array.map{|num| num * num }.last(2)
pp random_numbers_array.map{|num| num * num }.last(2)

n = 100
Benchmark.bm do |x|
  x.report { n.times { a_million_numbers_range.map{|num| num * num } } }
  x.report { n.times { a_million_numbers_range.map{|num| num * num }.take(10) } }
  x.report { n.times { a_million_numbers_array.map{|num| num * num } } }
  x.report { n.times { a_million_numbers_array.map{|num| num * num }.take(10) } }
  x.report { n.times { random_numbers_array.map{|num| num * num } } }
  x.report { n.times { random_numbers_array.map{|num| num * num }.take(10) } }
end

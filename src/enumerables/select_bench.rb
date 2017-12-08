require "./requirements"

a_million_numbers_range = (1..1_000_000)
a_million_numbers_array = (1..1_000_000).to_a
random_numbers_array = Array.new(10_000) { rand(-100_000..100_000) }

pp a_million_numbers_range.select{|num| num.even? }.last(3)
pp a_million_numbers_array.select{|num| num.even? }.last(3)
pp random_numbers_array.select{|num| num.even? }.last(3)

n = 100
Benchmark.bm do |x|
  x.report { n.times { a_million_numbers_range.select{|num| num.even? } } }
  x.report { n.times { a_million_numbers_array.select{|num| num.even? } } }
  x.report { n.times { random_numbers_array.select{|num| num.even? } } }
end

Benchmark.ips do |x|
  x.report("a_million_numbers_range.reduce") { a_million_numbers_range.select{|num| num.even? } }
  x.report("a_million_numbers_array.reduce") { a_million_numbers_array.select{|num| num.even? } }
  x.report("random_numbers_array.reduce") { random_numbers_array.select{|num| num.even? } }
end

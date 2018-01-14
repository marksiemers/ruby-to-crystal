require "./requirements"

def factorial(n)
  return n if n < 2
  raise "Integer got too big" if n > UInt64::MAX - Int64::MAX
  n * factorial(n - 1)
end

n = BigInt.new(1)
pp factorial(n)
pp factorial(n * 5)
pp factorial(n * 10)
pp factorial(n * 15)
pp factorial(n * 20)
pp factorial(n * 25)
pp factorial(n * 50)

Benchmark.ips do |x|
  x.report("factorial(10)")  { factorial(10) }
  x.report("factorial(n * 5)")  { factorial(n * 5) }
  x.report("factorial(n * 25)") { factorial(n * 25) }
  x.report("factorial(n * 50)") { factorial(n * 50) }
end

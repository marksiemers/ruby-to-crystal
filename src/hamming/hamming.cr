module Hamming

  def self.compute(a,b)
    raise ArgumentError.new("Strands must be equal length") if a.size != b.size
    calculate_distance(a,b)
  end

  def self.calculate_distance(a,b)
    a.chars.zip(b.chars).count{|first, second| first != second }
  end
end

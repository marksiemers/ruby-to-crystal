module Hamming

  def self.compute(a,b)
    raise ArgumentError.new("Strands must be equal length") if a.size != b.size
    calculate_distance(a,b)
  end

  def self.calculate_distance(a,b)
    a.chars.zip(b.chars).count{|first, second| first != second }
  end
end

puts %(Hamming.compute("", "") #=> #{Hamming.compute("", "")})
puts %(Hamming.compute("A", "A") #=> #{Hamming.compute("A", "A")})
puts %(Hamming.compute("GGACTGA", "GGACTGA") #=> #{Hamming.compute("GGACTGA", "GGACTGA")})
puts %(Hamming.compute("A", "G") #=> #{Hamming.compute("A", "G")})
puts %(Hamming.compute("AG", "CT") #=> #{Hamming.compute("AG", "CT")})
puts %(Hamming.compute("AT", "CT") #=> #{Hamming.compute("AT", "CT")})
puts %(Hamming.compute("GGACG", "GGTCG") #=> #{Hamming.compute("GGACG", "GGTCG")})
puts %(Hamming.compute("ACCAGGG", "ACTATGG") #=> #{Hamming.compute("ACCAGGG", "ACTATGG")})
puts %(Hamming.compute("AAG", "AAA") #=> #{Hamming.compute("AAG", "AAA")})
puts %(Hamming.compute("AAA", "AAG") #=> #{Hamming.compute("AAA", "AAG")})
puts %(Hamming.compute("TAG", "GAT") #=> #{Hamming.compute("TAG", "GAT")})
puts %(Hamming.compute("GATACA", "GCATAA") #=> #{Hamming.compute("GATACA", "GCATAA")})
puts %(Hamming.compute("GGACGGATTCTG", "AGGACGGATTCT") #=> #{Hamming.compute("GGACGGATTCTG", "AGGACGGATTCT")})

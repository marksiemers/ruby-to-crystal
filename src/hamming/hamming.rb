module Hamming

  def self.compute(a,b)
    raise ArgumentError.new("Strands must be equal length") if a.size != b.size
    calculate_distance(a,b)
  end

  def self.calculate_distance(a,b)
    a.chars.zip(b.chars).count{|first, second| first != second }
  end
end

require "pp"
pp Hamming.compute("", "")
pp Hamming.compute("A", "A")
pp Hamming.compute("GGACTGA", "GGACTGA")
pp Hamming.compute("A", "G")
pp Hamming.compute("AG", "CT")
pp Hamming.compute("AT", "CT")
pp Hamming.compute("GGACG", "GGTCG")
pp Hamming.compute("ACCAGGG", "ACTATGG")
pp Hamming.compute("AAG", "AAA")
pp Hamming.compute("AAA", "AAG")
pp Hamming.compute("TAG", "GAT")
pp Hamming.compute("GATACA", "GCATAA")
pp Hamming.compute("GGACGGATTCTG", "AGGACGGATTCT")

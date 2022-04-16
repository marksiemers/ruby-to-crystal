require "benchmark"
require "benchmark/ips"
require_relative "./hamming"

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

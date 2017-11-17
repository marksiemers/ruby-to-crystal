module Atbash
  private PLAIN = "abcdefghijklmnopqrstuvwxyz".chars
  private CIPHER = "zyxwvutsrqponmlkjihgfedcba".chars

  def self.encode(message)
    format(standardize(message).map{|char| encode(char) })
  end

  def self.encode(char : Char)
    PLAIN.includes?(char) ? CIPHER.at(PLAIN.index(char) || 0) : char
  end

  def self.format(message)
    message.each_slice(5).map{|group| group.join }.join(' ')
  end

  def self.standardize(message)
    message.downcase.chars.select{|char| char.alphanumeric? }
  end

end

pp Atbash.encode("no")
pp Atbash.encode("yes")
pp Atbash.encode("The quick brown fox jumps over the lazy dog.")

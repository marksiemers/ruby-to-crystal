module Atbash
  PLAIN = "abcdefghijklmnopqrstuvwxyz".chars
  CIPHER = "zyxwvutsrqponmlkjihgfedcba".chars

  def self.encode(message)
    format(standardize(message).map{|char| encode_char(char) })
  end

  def self.encode_char(char)
    PLAIN.include?(char) ? CIPHER.at(PLAIN.index(char) || 0) : char
  end

  def self.format(message)
    message.each_slice(5).map{|group| group.join }.join(' ')
  end

  def self.standardize(message)
    message.downcase.chars.select{|char| alphanumeric?(char) }
  end

  def self.alphanumeric?(char)
    ('a'..'z').include?(char.downcase) || (0..9).include?(char)
  end

end

puts %(Atbash.encode("no") # => #{Atbash.encode("no")})
puts %(Atbash.encode("yes") # => #{Atbash.encode("yes")})

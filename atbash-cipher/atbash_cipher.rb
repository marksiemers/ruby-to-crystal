module Atbash
  PLAIN = "abcdefghijklmnopqrstuvwxyz".chars
  CIPHER = "zyxwvutsrqponmlkjihgfedcba".chars

  def self.encode(message)
    format(standardize(message).map{|char| encode_char(char) })
  end

  def self.encode_char(char)
    CIPHER.at(PLAIN.index(char)) || char
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
puts %(Atbash.encode("mindblowingly") # => #{Atbash.encode("mindblowingly")})
puts %(Atbash.encode("Testing, 1 2 3, testing.") # => #{Atbash.encode("Testing, 1 2 3, testing.")})
puts %(Atbash.encode("The quick brown fox jumps over the lazy dog.") # => #{Atbash.encode("The quick brown fox jumps over the lazy dog.")})

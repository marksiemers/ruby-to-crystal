module Year
  extend self

  def leap?(year)
    year % 400 == 0 || (year % 100 != 0 && year % 4 == 0)
  end
end

puts "Year.leap?(1896) # => #{Year.leap?(1896)}"
puts "Year.leap?(1900) # => #{Year.leap?(1900)}"
puts "Year.leap?(1904) # => #{Year.leap?(1904)}"
puts "Year.leap?(2000) # => #{Year.leap?(2000)}"
puts "Year.leap?(2016) # => #{Year.leap?(2016)}"
puts "Year.leap?(2100) # => #{Year.leap?(2100)}"
puts "Year.leap?(2400) # => #{Year.leap?(2400)}"

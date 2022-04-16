module Year
  extend self

  def leap?(year)
    year % 400 == 0 || (year % 100 != 0 && year % 4 == 0)
  end
end

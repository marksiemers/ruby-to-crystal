module Type
  extend self

  def what_is_this(thing)
    "This is definitely an Integer"
  end

  def what_is_this(thing)
    "This is definitely an Array"
  end

  def what_is_this(thing)
    "This is definitely a String"
  end

  def what_is_this(thing)
    "This is definitely a Hash (of unknown types)"
  end
end

puts Type.what_is_this(1)
puts Type.what_is_this([] of Int32)
# puts Type.what_is_this([] of String)
puts Type.what_is_this("")
puts Type.what_is_this({} of String => String)
# puts Type.what_is_this({} of Symbol => String)
# pp Type.what_is_this({"Is this a tuple", true})

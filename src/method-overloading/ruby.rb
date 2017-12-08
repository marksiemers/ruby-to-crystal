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
    "This is definitely a Hash"
  end

end

puts Type.what_is_this(1)
puts Type.what_is_this([])
puts Type.what_is_this("")
puts Type.what_is_this({})

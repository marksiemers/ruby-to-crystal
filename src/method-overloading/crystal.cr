module Type
  extend self

  def what_is_this(thing : Int)
    "This is definitely an Integer"
  end

  def what_is_this(thing : Array)
    "This is definitely an Array"
  end

  def what_is_this(thing : String)
    "This is definitely a String"
  end

  def what_is_this(thing : Hash(String,String))
    "This is definitely a Hash of String => String"
  end

  def what_is_this(thing : Hash)
    "This is definitely a Hash (of unknown types)"
  end

  # def what_is_this(thing)
  #   "I don't know what this is"
  # end
end

puts Type.what_is_this(1)
puts Type.what_is_this([] of Int32)
puts Type.what_is_this([] of String)
puts Type.what_is_this("")
puts Type.what_is_this({} of String => String)
puts Type.what_is_this({} of Symbol => String)
puts Type.what_is_this({"Is this a tuple", true})

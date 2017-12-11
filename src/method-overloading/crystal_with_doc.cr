module Definite

  def message(thing)
    "This is definitely #{a_or_an(thing)} #{thing}"
  end

  def a_or_an(thing)
    if "aeiou".includes? thing.chars.first.downcase
      "an"
    else
      "a"
    end
  end

end

# A Type is a module that reports what type a variable definitely is.
module Type
  extend Definite
  extend self

  # Returns a `String` indicating that *thing* is definitely an Integer
  #
  # ```
  # Type.what_is_this(1) # => "This is definitely an Integer"
  # ```
  def what_is_this(thing : Int)
    message("Integer")
  end

  # Returns a `String` indicating that *thing* is definitely an Array(String)
  #
  # ```
  # Type.what_is_this([] of String) # => "This is definitely an Array(String)"
  # ```
  def what_is_this(thing : Array(String))
    message("Array(String)")
  end

  # Returns a `String` indicating that *thing* is definitely an Array
  #
  # ```
  # Type.what_is_this([] of Int32) # => "This is definitely an Array"
  # ```
  def what_is_this(thing : Array)
    message("Array")
  end

  # Returns a `String` indicating that *thing* is definitely a String
  #
  # ```
  # Type.what_is_this("A string") # => "This is definitely a String"
  # ```
  def what_is_this(thing : String)
    message("String")
  end

  # Returns a `String` indicating that *thing* is definitely a Hash(String,String)
  #
  # ```
  # Type.what_is_this({} of String => String) # => "This is definitely a Hash(String,String)"
  # ```
  def what_is_this(thing : Hash(String,String))
    message("Hash(String,String)")
  end

  # Returns a `String` indicating that *thing* is definitely a Hash
  #
  # ```
  # Type.what_is_this({} of Symbol => String) # => "This is definitely a Hash of unknown types)"
  # ```
  def what_is_this(thing : Hash)
    message("Hash (of unknown types)")
  end

  # Returns a `String` indicating that *thing* is not known for sure for
  # unsupported types
  #
  # ```
  # Type.what_is_this({"Is this a tuple", true}) # => "I don't know for sure what this is"
  # ```
  def what_is_this(thing)
    "I don't know for sure what this is"
  end
end

pp Type.what_is_this(1)
pp Type.what_is_this([] of Int32)
pp Type.what_is_this([] of String)
pp Type.what_is_this("")
pp Type.what_is_this({} of String => String)
pp Type.what_is_this({} of Symbol => String)
pp Type.what_is_this({"Is this a tuple", true})

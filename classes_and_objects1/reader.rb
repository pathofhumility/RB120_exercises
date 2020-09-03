# reader.rb
# Using the code from the prenious exercise, add a getter method named `#name`
# and invoke it in place of `@name` in `#greet`.

class Cat
  # attr_reader :name

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def greet
    puts "Meoww, my name is #{name}."
  end
end

kitty = Cat.new("Doe")
kitty.greet

# This problem could have been solved two ways:
# 1. The getter method can be written out as has been done in this example.
# 2. The preferred way of doing this is to uncomment line 6 and comment out
# the `name` method on lines 12 - 14.
# Both approaches do the same thing and provide the same accessability but
# approach #2 is much more concise.
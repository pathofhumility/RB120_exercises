# identify_yourself2.rb
#
# Update the following code so that it prints `i'm Doe!` when it invokes `puts kitty`.

class Cat
  attr_reader  :name

  def initialize(name)
    @name = name
  end

  def to_s
    "I'm #{name}!"
  end
end

kitty = Cat.new('Doe')
puts kitty

# We've overridden the `to_s` method, which is available to every Ruby class.
# `puts` calls the `to_s` method for every argument it gets passed to convert
# the value to an appropriate string representation. Knowing this we can
# override `#to_s` for any class to produce any output we need.
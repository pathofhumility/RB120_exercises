# hello_chloe.rb
# Using the following code, add an instance method named `#rename` that
# renames `kitty` when invoked.

class Cat
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename(new_name)
    self.name = new_name    # calling the setter method `name`. self.name=(new_name)
  end
end

kitty = Cat.new('Sophie')
puts kitty.name
kitty.rename('Chloe')
puts kitty.name

# There are some nuances that need paying attention to here:
# 1. Using the 'shorthand' style we have created both getter and
#    setter methods for `name`.
# 2. To access the setter method we must call the setter method on
#    `self`. The reason is that Ruby would create a local variable on
#    line 13 called `name` and assign it the value of `new_value` if we don't
#    somehow indicate we want to call a method, not create a variable.
# 3. Ruby allows for the use of syntactical sugar when calling a setter
#    method. Line 13 w/out that sugar would read: self.name=(new_name)
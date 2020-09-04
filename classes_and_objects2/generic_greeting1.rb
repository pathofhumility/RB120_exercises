# generic_greeting1.rb
# Modify the following code so that `Hello! I'm a cat!` is printed when 
# `Cat.generic_greeting` is invoked.

class Cat
  # class method
  def self.generic_greeting
    puts "Hello, I'm a cat!"
  end
end

Cat.generic_greeting
kitty = Cat.new
kitty.class.generic_greeting

# There are a couple of subtleties to pay attention to for this exercise
# 1. We are being asked to "do something" when `generic_greeting` is called
#    on `Cat`. `Cat` is a class, not and instance/object. This informs us
#    we will need to define a class method rather than an instance method.
#
# 2. In order to define a class method we need to define the method on the
#    class. We can do this by using `self` prepended to the method name or
#    we could prepend the class name: `Cat.generic_greeting`. The former
#    is the preferred syntax.
#
# Further Exploration:
# When we execute line 14, what I believe is happening is that we have 
# method chaining taking place. First, the class method is called on the
# object kitty which is of class Cat, the value Cat is returned. The class
# method is then called on Cat. generic_greeting is a defined class method
# for the Cat class so it is executed and the string is output.
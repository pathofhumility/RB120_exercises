# create_an_object.rb
# Using the code from the privious exercise, create an instance of `Cat` and
# assign it to a variable named `kitty`.

class Cat
end

kitty = Cat.new
p kitty

# We have instantiated a new object from the `Cat` class using the class
# method `::new`.
# The `::new` method returns an instance of the class it was invoked on and
# we have assigned that new `Cat` object to the variable `kitty`.
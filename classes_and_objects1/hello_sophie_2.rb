# hello_sophie_2.rb
# Using the code from the privious exercise, move the greeting from the `#initialize`
# method to an instance method named `#greet` that prints a greeting when invoked.

class Cat
  def initialize(name)
    @name = name
  end

  def greet
    puts "Meoww, my name is #{@name}."
  end
end

kitty = Cat.new("Doe")
kitty.greet
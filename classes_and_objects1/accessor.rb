# accessor.rb
# Using the code from the privious exercise, replade the getter and setter
# methods using Ruby shorthand.

class Cat
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

  def greet
    puts "Meowww, my name is #{@name}."
  end
end

kitty = Cat.new("Doe")
kitty.greet
kitty.name = "Jammer"
kitty.greet
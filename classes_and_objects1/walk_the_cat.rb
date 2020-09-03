# walk_the_cat.rb
# Using the following code, create a module named `Walkable` that contains
# a method named `#walk`. This method should print `Let's go for for a walk!`
# when invoked. Include `Walkable` in `Cat` and invoke `#walk` on `kitty`.

module Walkable
  def walk
    puts "Let's go for a walk!"
  end
end

class Cat
  include Walkable
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Meowww, my name is #{name}."
  end
end

kitty = Cat.new("Doe")
kitty.greet
kitty.walk
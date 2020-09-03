# writer.rb
# Using the code from the previous exercise, add a setter method named `#name`.
# Then rename `kitty` to `Luna` and invoke `#greet` again.

class Cat
  # attr_reader :name     # 'shorthand' getter method
  # attr_writer :name     # 'shorthand' setter method
  # attr_accessor :name   # combines shorthand getter/setter methods
  def initialize(name)
    @name = name
  end

  # 'longhand' setter method
  def name=(name)
    @name = name
  end

  def greet
    puts "Meoww, my name is #{@name}."
  end
end

kitty = Cat.new("Doe")
kitty.greet
kitty.name = "Luna"
kitty.greet
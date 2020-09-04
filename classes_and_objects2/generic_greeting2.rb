# generic_greeting2.rb
#
# Using the following code, add two methods: `::generic_greeting` and `#personal_greeting`.
# The first method should be a class method and print a greeting that's generic to the class.
# The second method shuld be an instance method and print a greeting that's custom to the object.

class Cat
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # class method - An instance of the class can't call this.
  def self.generic_greeting
    puts "Hello, I'm a #{self}."
  end

  def personal_greeting
    puts "Hello, my name is #{name}."
  end
end

kitty = Cat.new('Doe')

Cat.generic_greeting
kitty.personal_greeting
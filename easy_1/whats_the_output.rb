# whats_the_output.rb
# What does the following code print? Fix this class so that there are no
# surprises.

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    #@name.upcase!
    "My name is #{@name.upcase}."
  end
end

#name = 'Doe'
name = 42   # further exploration code
doe = Pet.new(name)
name += 1   # further exploration code
puts doe.name       # => original code -> Doe modified code -> Doe further exploration -> '42'
puts doe            # => original and modified code -> My name is DOE. further exploration -> 'My name is 42'
puts doe.name       # => original code -> DOE modified code -> Doe further exploration -> '42'
puts name           # => original code -> DOE modified code -> Doe further exploration -> '43'

# Takeaway: The local variable `name` and the instance variable `@name` , reference the same value in memory.
# This is important because in the original code we destructively change (mutate) that value within the instance
# method `to_s` of the `fluffy` object by calling the `upcase!` method. This affects anything that references
# that value, including the local variable `name`.

# Further exploration: The subtle difference that is being demonstrated with the further exploration
# code is reassignment versus mutation. `name += 1` demonstrates reassignment of the `name` variable to a new value,
# whereas `#upcase!` mutates the value it is being called on. `name` and `@name` are still referencing the mutated
# value.
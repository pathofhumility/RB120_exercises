# A fixed-length array is an array that always has a fixed number of elements.
# Write a class tha implements a fixed-length array, and provides the necessary
# methods to support the following code:

class FixedArray
  attr_reader :array

  def initialize(arr_size)
    @array = Array.new(5)
  end

  def [](index)
    array[index]
  end

  def to_a
    array
  end
end

fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5



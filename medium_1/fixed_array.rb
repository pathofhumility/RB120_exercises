<<<<<<< HEAD
# fixed_array.rb
# A fixed-length array is an array that always has a ficed number of elements.
# Write a class that implements a fixed-lengthed array, and provides the necessary
# methods to support the following code:

class FixedArray
  attr_accessor :arr

  def initialize(len)
    @arr = Array.new(len)
  end

  def []=(i, element)
    arr[i] = element
  end

  def [](i)
    arr[i]
  end

  def to_a
    arr
  end

  def to_s
    "#{arr}"
=======
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
>>>>>>> 460bab6ef355502f17009b2e52bbe4ddeb0f52b8
  end
end

fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

<<<<<<< HEAD
fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end
=======

>>>>>>> 460bab6ef355502f17009b2e52bbe4ddeb0f52b8

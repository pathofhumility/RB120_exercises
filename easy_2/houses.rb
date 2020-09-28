# houses.rb
# Given the following code and output, modify the `House` class so the the code will work.
# Output:
# => Home 1 is cheaper
# => Home 2 is more expensive

class House
  include Comparable
  attr_reader :price, :beds

  def initialize(price, beds)
    @price = price
    @beds = beds
  end

  def <=>(other)
    self <=> other
  end
end

home1 = House.new(100_000, 3)
home2 = House.new(150_000, 4)
home3 = House.new(100_000, 3)
puts "Home 1 is cheaper" if home1.beds < home2.beds
puts "Home 2 is more expensive" if home2.price > home1.price
puts "Home 1 is equal expense" if home1.price == home3.price
# puts "Error" if home1 < home2 (Comparable compares values not objects)
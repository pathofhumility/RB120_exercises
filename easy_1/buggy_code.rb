# buggy_code.rb
# Fix the given code so it works properly.

class Car
  attr_accessor :mileage

  def initialize
    @mileage = 0
  end

  def increment_mileage(miles)
    total = mileage + miles
#   mileage = total
    self.mileage = total
  end

  def print_mileage
    puts mileage
  end
end

car = Car.new
car.mileage = 5000
car.increment_mileage(678)
car.print_mileage           # should print 5678

# Takeaway: `mileage` being assigned to the `total` value is treating `mileage` as a local variable.
# As such, when the call to `increment_milage` returns, the `mileage` local variable is lost.
# To solve the local variable issue we call the setter method for object `car` by prepending
# `self` to the method call.
# It is preferable to use the setter rather than the instance variable as the setter may contain
# checks and operations on the instance variable that would be missed if we use assignment by
# instance variable directly.
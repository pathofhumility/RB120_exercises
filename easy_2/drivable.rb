# drivable.rb
# Correct the given code so it will work properly.
# Solution: Remove `self.` from the `drive` method definition in the `Drivable` module.
# The reason for removing `self.` is that it was being structured to be accessed as a class
# method rather than an instance method when the `Drivable` module was mixed in to any class.
# In other words, `drive` was only going to be accessable as `Drivable.drive`, not `some_object.drive`.

module Drivable
  # def self.drive
  def drive

  end
end

class Car
  include Drivable
end


bobs_car = Car.new
bobs_car.drive
# refactoring_vehicles.rb
# Consider the following code. Refactor so all the classes use a common super class.

class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehilcle

  def wheels
    4
  end
end

class Motorcycle < Vehicle

  def wheels
    2
  end
end

class Truck < Vehilcle
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
end
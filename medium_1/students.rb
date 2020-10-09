# Below we have 3 classes: Student, Graduate, and Undergraduate.
# The implementation details for the #initialize methods in Graduate and Undergraduate are missing.
# Fill in those missing details so that the following requirements are fulfilled.
#
# 1. Graduaate students have the option to use on-campus parking, while undergraduate students do not.
# 2. Graduate and Undergraduate students both have a name and year associated with them.
#
# >>Note<< You can do this by adding or altering no more than 5 lines of code.
#
# Further exploration: Can you think of a way to use super() in another Student related class?

class Matriculate  # (noun, not verb)
  def initialize
    @matriculated = true
  end
end

class Student < Matriculate
  def initialize(name, year)
    super()
    @name = name
    @year = year
  end

  def to_s
    "#{@name} is a #{@year}."
  end
end

class Graduate < Student
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end

  def to_s
    super + " Parking: #{@parking}."
  end
end

class Undergraduate < Student
end

andy = Graduate.new('Andy', 'graduate student', true)
maris = Undergraduate.new('Maris', 'freshman')

puts andy
puts maris

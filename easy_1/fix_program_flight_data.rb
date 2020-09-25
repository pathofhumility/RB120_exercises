# fix_program_flight_data.rb
# Consider the following class definition.
# There is nothing technicallly incorrect about this class, but the definition
# may lead to problems in the future. How can this class be fixed to be resistant
# to future problems?

class Flight
#  attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
#    init_database
    @flight_number = flight_number
  end

#   private

#   def init_database
#     @database_handle = Database.init
#   end
end

# I did not understand the purpose of this class, specifically the `@database_handle = Database.init`
# code.
# After reading the solution & discussion I understand that the focus of this exercise is to NOT grant
# exposure of state that doesn't require it. The database need only be initialized at instantiation, so
# it is unneccesary, and unwise to allow exposure after the instatiation process.
# Solution: Remove exposing the `database_handle` instance variable by removing the accessor method.
# Note: My solution of adding the private method is not necessary.
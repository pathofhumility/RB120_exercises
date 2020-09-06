# private_secret.rb
#
# Using the following code, add a method named `share_secret` that prints
# the value of `#secret` when invoked.

class Person
  attr_writer :secret

  def share_secret
    puts self.secret
  end

  private
  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret'
person1.share_secret

person1.secret # => private method `secret' called for #<Person:0x000055f49682b280 @secret="Shh.. this is a secret"> (NoMethodError) 

# The main takeaway here is that private methods can only be called directly from within the class.
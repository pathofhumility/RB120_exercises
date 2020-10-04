# fix_program_expander.rb
# What is wrong with the following code? What fixes would you make?

class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    self.expand(3)
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander

# Until V2.7 you could not explicitly call a private method (even with self).
# Prior to 2.7 the call would have been: expand(3)
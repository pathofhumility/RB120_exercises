# fix_the_program_1.rb
# Complete the given code so that it produces the expected output.
# Expected output:
# => The author of "Snow Crash" is Neil Stephenson.
# => book = "Snow Crash", by Neil Stephenson.

class Book
  # class needs a getter method
  attr_reader :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# Further explanation:
# Why did we use `attr_reader`?
# Answer: Our outcome requires that we can output (see) the instance variable values,
# but that we won't need to change them. For this purpose `attr_reader` is most appropriate.
# Would it be ok to use one of the other two accessor methods?
# Answer: It would be ok to use `attr_accessor` as it would provide both getter and setter
# capabilities. It would not be ok to use `attr_writer`, as it only provides setter capabilites
# and we need to expose the instance variables for viewing.
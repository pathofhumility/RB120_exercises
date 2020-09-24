# fix_the_program_2.rb
# Complete the given code so that ir produces the expected output.
# Expected output:
# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson

class Book
  attr_accessor :author, :title

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# What potential problems, if any, are introduced by separating the creation and intitialization
# of the instance variables?
# Answer:
# I'm not sure it creates a specific problem, but as this code is written it seems to be pushing
# against one of the basis for the OOP paradigm... modeling based on "real" world structure.
# Specifically, the book object is created, but becomes dependant on further action to capture state
# when the attribules are available at object conception to define state (author and title).
# To my way of thinking, seperating the creation and initialization makes more sense if state can't
# be, or only partially determined at creation. Think modeling a pregnancy. The object is created, but
# all or part of the state probably can't realistically be determined at that point.
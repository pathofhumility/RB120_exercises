# banner_class.rb

# Complete this class so that the test cases work as intended. You are free to add any methhods
# or instance variables you need, however, do not make the implementation details public.

class Banner
  attr_reader :message, :empty_space, :empty_dash

  def initialize(message)
    @message = message
    @empty_space = fill_space(' ')
    @empty_dash = fill_space('-')
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def fill_space(char)
    char * message.length
  end

  def horizontal_rule
   "+-#{empty_dash}-+" 
  end

  def empty_line
   "| #{empty_space} |" 
  end

  def message_line
    "| #{message} |"
  end
end

banner = Banner.new('To boldly got where no one has gone before.')
puts banner

banner = Banner.new('')
puts banner
# banner_class.rb

# Complete this class so that the test cases work as intended. You are free to add any methhods
# or instance variables you need, however, do not make the implementation details public.

# Further exploration: Modify the class so `new` will optionally let you specify a ficed banner
# width at the time the Banner object is created. The message in the banner should be centered
# within the banner of that width. Decide for yourself how you want to handle widths that are
# either too narrow or too wide.

class Banner
  def initialize(message, banner_width=0)
    @message = message
    @banner_width = banner_width
    @empty_space = fill_space(' ')
    @empty_dash = fill_space('-')
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def fill_space(char)
    if @banner_width <= @message.length
      char * @message.length
    else
      char * @banner_width
    end
  end

  def horizontal_rule
   "+-#{@empty_dash}-+" 
  end

  def empty_line
   "| #{@empty_space} |" 
  end

  def message_line
    if @banner_width <= @message.length
      "| #{@message} |"
    else
      pre_space = ' ' * ((@banner_width - @message.length) / 2) 
      post_space = ' ' * (@banner_width - @message.length - pre_space.length)
      "| #{pre_space}#{@message}#{post_space} |"
    end
  end
end

banner = Banner.new('To boldly go where no one has gone before.')
puts banner

banner = Banner.new('To boldly go where no one has gone before.', 150)
puts banner

banner = Banner.new('')
puts banner
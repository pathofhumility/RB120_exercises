# privacy.rb

class Machine

  def initialize
    self.switch = stop
  end

  def start
    self.flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def machine_status
    switch
  end

  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

gadget = Machine.new
puts gadget.machine_status
gadget.start
puts gadget.machine_status
gadget.stop
puts gadget.machine_status

# NOTE: As of Ruby 2.7, private methods can be called explicitly with `self`.
# If you do not wish to call `flip_switch` explicitly, remove `self.` from 
# line 6. I have already removed `self.` on line 10 to demonstrate both approaches.
# Line 18 requires `self.` because if we remove it `switch` will be treated as a
# local variable.
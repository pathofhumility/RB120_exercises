# circular_queue.rb

class CircularQueue
  def initialize(buffer_size)
    @buffer_arr = Array.new(buffer_size)
    @buffer_size = buffer_size
    @newest = 0
    @oldest = 0
  end

  def enqueue(new_element)
    dequeue if !@buffer_arr.any? nil
    @buffer_arr[@newest] = new_element
    @newest = increment_pointer(@newest) 
  end

  def dequeue
    return nil if @buffer_arr.all? nil
    result = @buffer_arr[@oldest]
    @buffer_arr[@oldest] = nil
    @oldest = increment_pointer(@oldest)
    result
  end

  private

  def increment_pointer(index)
    (index += 1) % @buffer_size
  end
end

  queue = CircularQueue.new(3)
  puts queue.dequeue == nil

  queue.enqueue(1)
  queue.enqueue(2)
  puts queue.dequeue == 1

  queue.enqueue(3)
  queue.enqueue(4)
  puts queue.dequeue == 2

  queue.enqueue(5)
  queue.enqueue(6)
  queue.enqueue(7)
  puts queue.dequeue == 5
  puts queue.dequeue == 6
  puts queue.dequeue == 7
  puts queue.dequeue == nil

  queue = CircularQueue.new(4)
  puts queue.dequeue == nil

  queue.enqueue(1)
  queue.enqueue(2)
  puts queue.dequeue == 1

  queue.enqueue(3)
  queue.enqueue(4)
  puts queue.dequeue == 2

  queue.enqueue(5)
  queue.enqueue(6)
  queue.enqueue(7)
  puts queue.dequeue == 4
  puts queue.dequeue == 5
  puts queue.dequeue == 6
  puts queue.dequeue == 7
  puts queue.dequeue == nil

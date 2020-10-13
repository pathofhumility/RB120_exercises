# circular_queue_heap_version.rb

class CircularQueue
  def initialize(buffer_size)
    @heap = []
    @heap_max = buffer_size
  end

  def enqueue(new_element)
    dequeue if @heap.size == @heap_max 
    @heap.push new_element
  end

  def dequeue
    @heap.shift
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

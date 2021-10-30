# linear data structure
# First In First Out (FIFO)

######## Time complicity
### Average:
# Access    O(n)
# Search    O(n)
# Insertion O(1)
# Deletion  O(1)
#### Worst
# Access    O(n)
# Search    O(n)
# Insertion O(1)
# Deletion  O(1)

######## Space complicity
#### Worst
# O(n)

class QueueDs
  attr_reader :queue, :max_size

  def initialize(max_size = nil)
    @queue    = []
    @max_size = max_size
  end

  # Enqueue: Add an element to the end of the queue
  def enqueue(i)
    is_full? ? queue : queue.prepend(i)
  end

  # Dequeue: Remove an element from the front of the queue
  def dequeue
    queue.pop unless is_empty?
  end

  # IsEmpty: Check if the queue is empty
  def is_empty?
    queue.empty?
  end

  # IsFull: Check if the queue is full
  def is_full?
    size == max_size if max_size
  end

  # Peek: Get the value of the front of the queue without removing it
  def peek
    queue.first unless is_empty?
  end

  # Size: for sized queue
  def size
    queue.length
  end
end

# run
queue = QueueDs.new(5)
p queue.enqueue(1)
p queue.enqueue(2)
p queue.enqueue(3)

p queue.dequeue
p queue.dequeue

p queue.is_empty?
p queue.is_full?

p queue.peek
p queue.size

p queue

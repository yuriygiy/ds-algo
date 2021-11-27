# linear data structure
# Last In First Out (LIFO)

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

class StackDs
  attr_reader :stack, :max_size

  def initialize(max_size = nil)
    @stack    = []
    @max_size = max_size
  end

  # Push: Add an element to the top of a stack
  def push(i)
    is_full? ? stack : stack.push(i)
  end

  # Pop: Remove an element from the top of a stack
  def pop
    stack.pop unless is_empty?
  end

  # IsEmpty: Check if the stack is empty
  def is_empty?
    stack.empty?
  end

  # IsFull: Check if the stack is full
  def is_full?
    size == max_size if max_size
  end

  # Peek: Get the value of the top element without removing it
  def peek
    stack.last unless is_empty?
  end

  # Size: for sized stack
  def size
    stack.length
  end
end

# run
stack = StackDs.new(5)
p stack.push(1)
p stack.push(2)
p stack.push(3)

p stack.pop
p stack.pop

p stack.is_empty?
p stack.is_full?

p stack.peek
p stack.size

p stack

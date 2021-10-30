# linear data structure
# Last In First Out (LIFO)

class StackDs
	attr_reader :stack, :size

	def initialize(size = nil)
		@stack = []
		@size  = size
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
		stack.length == size if size
	end

	# Peek: Get the value of the top element without removing it
	def peek
		stack.last unless is_empty?
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
p stack

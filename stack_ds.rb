# linear data structure
# Last In First Out (LIFO)

# Push: Add an element to the top of a stack
# Pop: Remove an element from the top of a stack
# IsEmpty: Check if the stack is empty
# IsFull: Check if the stack is full
# Peek: Get the value of the top element without removing it

class StackDs

	attr_reader :stack, :size

	def initialize(size = nil)
		@stack = []
		@size  = size
	end 

	def push(i)
		is_full? ? stack : stack.push(i)
	end 

	def pop
		stack.pop unless is_empty? 
	end 

	def is_empty?
		stack.empty?
	end 

	def is_full?
		stack.length == size if size   
	end 

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


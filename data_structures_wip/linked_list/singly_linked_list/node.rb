# SinglyLinkedList

class Node
  attr_accessor :value, :node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

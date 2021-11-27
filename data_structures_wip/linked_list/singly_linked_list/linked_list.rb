# SinglyLinkedList

class LinkedList
  attr_accessor :head

  def initialize(value)
    @head = Node.new(value)
  end

  # adding node
  def add_first(value)
    new_head = Node.new(value)
    new_head.next = head
    head = new_head
  end

  def add_last(value)
    new_tail = Node.new(value)
    tail = head
    while tail.next
      tail = tail.next
    end
    tail = new_tail
  end

  def add_after(node, value)
    new_node = Node.new(value)
    new_node.next = node.next
    node.next = new_node
  end
end

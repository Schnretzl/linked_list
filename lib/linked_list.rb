require_relative 'node.rb'

class LinkedList
  attr_reader :size, :head, :tail

  def initialize
    @size = 0
    @head = nil
    @tail = nil
  end

  def append(value)
    @num_nodes += 1
    if @head.nil?
      prepend(value)
    else
      @tail = Node.new(value)
      Node tmp = @head
      tmp = tmp.next_node until tmp.next_node.nil?
      tmp.next_node = Node.new(value)
    end
  end

  def prepend(value)
    @size += 1
    tmp = Node.new(value)
    tmp.next_node = @head
    @head = tmp
  end

  def at(index)
    tmp = @head
    (index - 1).times do
      tmp = tmp.next_node
    end
    tmp
  end

  def pop
    tmp = @head
    (@size - 1).times do
      tmp = tmp.next_node
    end
    @tail = tmp
    size -= 1
  end

  def contains?(value)
    tmp = @head
    @size.times do
      return true if tmp.value == value

      tmp = tmp.next_node
    end
    false
  end

  def find(value)

  end

  def to_s

  end

end
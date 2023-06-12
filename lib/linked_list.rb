require_relative 'node.rb'

class LinkedList

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
      until tmp.next_node.nil?
        tmp = tmp.next_node
      end
      tmp.next_node = Node.new(value)

    end
  end

  def prepend(value)
    @head = Node.new(value)
  end

  def size
    @num_nodes
  end

  def head
    @head
  end

  def tail
    @tail
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
  end

  def contains?(value)

  end

  def find(value)

  end

  def to_s

  end

end
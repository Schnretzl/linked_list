require_relative 'node.rb'

class LinkedList
  attr_reader :size, :head, :tail

  def initialize
    @size = 0
    @head = nil
    @tail = nil
  end

  def append(value)
    if @head.nil?
      prepend(value)
    else
      @size += 1
      @tail = Node.new(value)
      tmp = @head
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
    index.times do
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
    @size -= 1
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
    index = 0
    tmp = @head
    @size.times do
      return index if tmp.value == value

      index += 1
      tmp = tmp.next_node
    end
    nil
  end

  def to_s
    tmp = @head
    return_str = ''
    size.times do
      return_str.concat("( #{tmp.value} ) -> ")
      tmp = tmp.next_node
    end
    return_str.concat('nil')
  end

  def insert_at(index, value)
    if index > (@size - 1) || index.negative?
      puts 'Error: Index out of bounds'
    elsif index.zero?
      prepend(value)
    else
      @size += 1
      tmp = @head
      (index - 1).times do
        tmp = tmp.next_node
      end
      tmp2 = tmp.next_node
      new_node = Node.new(value)
      tmp.next_node = new_node
      new_node.next_node = tmp2
    end
  end
end

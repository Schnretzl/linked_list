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
      # tmp = @head
      # tmp = tmp.next_node until tmp.next_node.nil?
      # tmp.next_node = Node.new(value)
      # @tail = tmp.next_node
      new_node = Node.new(value)
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def prepend(value)
    @size += 1
    tmp = Node.new(value)
    tmp.next_node = @head
    @head = tmp
    @tail.nil? && @tail = tmp
  end

  def at(index)
    tmp = @head
    index.times do
      tmp = tmp.next_node
    end
    tmp
  end

  def pop
    tmp = at(@size - 2)
    @tail = tmp
    @tail.next_node = nil
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
    if index > @size || index.negative?
      puts 'Error: Index out of bounds'
    elsif index.zero?
      prepend(value)
    elsif index == @size
      append(value)
    else
      @size += 1
      before = at(index - 1)
      new_node = Node.new(value)
      new_node.next_node = before.next_node
      before.next_node = new_node

    end
  end

  def remove_at(index)
    if index > (@size - 1) || index.negative?
      puts 'Error: Index out of bounds'
    elsif index == (@size - 1)
      pop
    else
      @size -= 1
      at(index - 1).next_node = at(index + 1)
    end
  end
end

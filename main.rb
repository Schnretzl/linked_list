require_relative 'lib/linked_list.rb'

def main
  list = LinkedList.new
  list.append(1)
  list.append(2)
  puts "List as string: #{list}"
  list.prepend(-3)
  puts "Prepending -3: #{list}"
  list.append(7)
  puts "Appending 7: #{list}"
  puts "Size = #{list.size}"
  puts "Head = #{list.head.value}"
  puts "Tail = #{list.tail.value}"
  puts "Item at index 1 = #{list.at(1).value}"
  list.pop
  puts "Popping last item: #{list}"
  puts "Contains 1: #{list.contains?(1)}"
  puts "Contains 5: #{list.contains?(5)}"
  puts "First index of 2: #{list.find(2)}"
  list.insert_at(1, 'x')
  puts "Inserting at index 1: #{list}"
  list.remove_at(2)
  puts "Removing at index 2: #{list}"
  list.insert_at(3, 'y')
  puts "Inserting at index 3: #{list}"
end

main
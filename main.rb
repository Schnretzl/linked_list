require_relative 'lib/linked_list.rb'

def main
  list = LinkedList.new
  list.append(1)
  list.append(2)
  puts "List as string: #{list.to_s}"
  list.prepend(-3)
  puts "Prepending -3: #{list.to_s}"
  list.append(7)
  puts "Appending 7: #{list.to_s}"
  puts "Size = #{list.size}"
  puts "Head = #{list.head.value}"
  puts "Tail = #{list.tail.value}"
  puts "Item at index 1 = #{list.at(1).value}"
  list.pop
  puts "Popping last item: #{list.to_s}"
  puts "Contains 1: #{list.contains?(1)}"
  puts "Contains 5: #{list.contains?(5)}"
  puts "First index of 2: #{list.find(2)}"
  puts "First index of 5: #{list.find(5)}"
end

main
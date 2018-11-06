class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

#output looks like this
#12 --> 99 --> 37 --> nil

class Stack
    attr_reader :data

    def initialize
        @data = nil
        # stack = LinkedList::stack.new
    end
    
    # Push a value onto the stack
        
        # stack = Stack.new
        # stack.push(37)
        # stack.push(99)  
        # stack.push(12)
  
    def push(value)
        @data = LinkedListNode.new(value, @data)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
  
        # puts stack.pop
        # returns 12
    
    def pop
    return print "nil\n" if @data.nil?
    print "#{@data.value}\n"
    @data = @data.next_node
  end
end

    #stack = Stack.new
    #stack.push(37)
    #stack.push(99)
    #stack.push(12)
    #stack.pop
    # => 12
    #stack.pop
    # => 99
    #stack.pop
    # => 37
    #stack.pop
    # => nil

    def reverse_list(list)
    stack = Stack.new

    while list
        stack.push(list.value)
        list = list.next_node
    end

    return stack.data
end
  
node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "------"

revlist = reverse_list(node3)

print_values(revlist)

#output looks like this
#12 --> 99 --> 37 --> nil
#------
#37 --> 99 --> 12 --> nil


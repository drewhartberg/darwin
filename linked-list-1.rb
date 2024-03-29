# require "byebug"

class LinkedList
    attr_reader :value, :next_node

    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end 
end

    class Stack
        attr_reader :data

        def initialize
            @data = nil
        end

        def push(value)
            @data = LinkedList.new(value, @data)
        end
    end

    def reverse_list(list)
        stack = Stack.new
        while list
            stack.push(list.value)
            list = list.next_node
        end
    # byebug
        return stack.data
    end
    
    def print_values(list_node)
        if list_node
            print "#{list_node.value} -->"
            print_values(list_node.next_node)
        else
            puts "nil\n"
            return
        end
    end

    lastnode = LinkedList.new(7)
    secondnode = LinkedList.new(55, lastnode)
    firstnode = LinkedList.new(39, secondnode)

    print_values(firstnode)
    puts "---------"
    revlist = reverse_list(firstnode)
    print_values(revlist)
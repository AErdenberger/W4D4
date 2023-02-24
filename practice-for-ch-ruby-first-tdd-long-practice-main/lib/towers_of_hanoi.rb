class Stack
    def initialize
        @stack = []
    end

    def push(value)
        stack << value 
        self 
    end

    def pop
        stack.pop
    end

    def peek
        stack.last
    end

    def size
        stack.length
    end

    def empty?
        stack.empty?
    end
    
    def inspect
        "<#Stack:#{stack.object_id}>"
    end

    private
    attr_reader
end


class Towers_Game
    def initialize()
        @stack_1 = Stack.new {[1,2,3,4]}
        @stack_2 = Stack.new
        @stack_3 = Stack.new
    end

    def move
    end

    def won?
    end
end
class Nodo
    attr_accessor :value, :next_n
    
    def initialize (val, ref)
        @value = val
        @ref = ref
    end

    def to_s
        @value
    end
end

class LinkedList
    def initialize(val)
      @head = Nodo.new(val, nil)
    end

    def add(value)
      current = @head
      while current.next_n != nil
        current = current.next_n
      end 
      current.next_n = Nodo.new(value, nil)
    end

    def show
      current = @head
      list = []
      while current.next_n != nil 
        list += [current.value]
        current = current.next_n
      end
      list += [current.value]
      puts list.join(", ")
    end
end

puts "Add values to the list. To finish, write -1"

var = gets.chomp
limit = "-1"
testList = LinkedList.new(var)

while var != limit
    var = gets.chomp
    if var != limit
        testList.add(var)
    end
end

puts "\nElements in the list:"

testList.show

puts "\n"

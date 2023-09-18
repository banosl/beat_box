class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(sound)
    @head = Node.new(sound)
  end

  def count
    count = 0
    if @head == nil
      count
    else
      count = 1  
    end

    node = @head
    
    while node.next_node != nil
      node = node.next_node
      count += 1
    end

    count
  end

  def to_string
    node = @head
    message = @head.data
    while node.next_node != nil
      node = node.next_node
      message += " #{node.data}"
    end
    message
  end
end
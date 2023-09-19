class LinkedList
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(sound)
    if @head.nil?
      @head = Node.new(sound)
    else
      node = @head

      until node.next_node == nil
        node = node.next_node
      end
      node.add_to_next_node(sound)
    end
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

  def prepend(sound)
    current_head = @head
    @head = Node.new(sound)
    @head.add_to_next_node(current_head)
  end

  def insert(position, sound)
    node = @head

    (position - 1).times do
      node = node.next_node
    end
    
    hold = node.next_node
    node.add_to_next_node(sound)

    node = node.next_node
    node.add_to_next_node(hold)
  end

  def find(position, length)
    node = @head

    position.times do
      node = node.next_node
    end
    
    message = node.data
    
    (length - 1).times do
      node = node.next_node
      message += " #{node.data}"
    end

    message
  end
end
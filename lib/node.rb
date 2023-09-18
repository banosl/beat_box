class Node
  attr_reader :data,
              :next_node
  def initialize(data)
    @data = data
    @next_node = nil
  end

  def new_node(data)
    if data.class == String
      @next_node = Node.new(data)
    elsif
      @next_node = data
    end
  end
end
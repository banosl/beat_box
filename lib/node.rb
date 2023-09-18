class Node
  attr_reader :data,
              :next_node
  def initialize(data)
    @data = data
    @next_node = nil
  end

  def new_node(sound)
    @next_node = Node.new(sound)
  end
end
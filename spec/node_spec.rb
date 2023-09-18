require "./lib/node.rb"

RSpec.describe Node do
  it 'can make a node with data and next pointer' do
    node = Node.new("plop")

    expect(node.data).to eq("plop")
    expect(node.next_node).to eq(nil)
  end
end
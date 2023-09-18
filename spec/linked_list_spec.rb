require './lib/linked_list.rb'
require './lib/node.rb'
require 'pry'

RSpec.describe LinkedList do
  before :each do
    @list = LinkedList.new
  end

  it 'a list is initiated with a head valued with nil' do
    expect(@list).to be_instance_of(LinkedList)
    expect(@list.head).to eq(nil)
  end

  describe '#append' do
    it 'adds a new piece of data to the list' do
      @list.append("doop")

      expect(@list.head.data).to eq("doop")
      expect(@list.head.next_node).to eq(nil)
    end
  end

  describe '#count' do
    it 'tells us how many things are in the list' do
      @list.append("doop")

      expect(@list.count).to eq(1)
    end
  end

  describe '#to_string' do
    it 'generates a string of all elements in the list, separated by spaces'
  end
end
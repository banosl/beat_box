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

  context 'iteration 1' do
    before :each do
      @list.append("doop")
    end

    describe '#append' do
      it 'adds a new piece of data to the list' do
        expect(@list.head.data).to eq("doop")
        expect(@list.head.next_node).to eq(nil)
      end

      it 'adds a second piece of data to the list' do
        @list.append("deep")

        expect(@list.head.next_node).to be_instance_of(Node)
        expect(@list.head.next_node.data).to eq("deep")
      end
    end

    describe '#count' do
      it 'tells us how many things are in the list' do
        expect(@list.count).to eq(1)

        @list.append("deep")
        expect(@list.count).to eq(2)

        @list.append("boop")
        expect(@list.count).to eq(3)
      end
    end

    describe '#to_string' do
      it 'generates a string of all elements in the list, separated by spaces' do
        expect(@list.to_string).to eq("doop")

        @list.append("deep")
        expect(@list.to_string).to eq("doop deep")

        @list.append("boop")
        expect(@list.to_string).to eq("doop deep boop")
      end
    end
  end

  context 'iteration2' do
    describe '#prepend' do
      it 'can add a node to the beginning of the list' do
        @list.append("plop")
        @list.append("suu")

        expect(@list.to_string).to eq("plop suu")
        expect(@list.count).to eq(2)

        @list.prepend("dop")

        expect(@list.to_string).to eq("dop plop suu")
        expect(@list.count).to eq(3)
      end
    end

    describe '#insert' do

    end
  end
end
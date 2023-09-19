require './lib/beat_box.rb'
require './lib/linked_list.rb'
require './lib/node.rb'
require 'pry'

RSpec.describe BeatBox do
  it 'when a beatbox is instantiated, a list is too' do
    beatbox = BeatBox.new

    expect(beatbox).to be_instance_of(BeatBox)
    expect(beatbox.list).to be_instance_of(LinkedList)
    expect(beatbox.list.head).to eq(nil)
  end
end
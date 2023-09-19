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

  describe "#append and #count" do
    before :each do
      @bb = BeatBox.new
      @bb.append("deep doo ditt")
    end

    it 'can append a string of multiple sounds as individual nodes' do
      expect(@bb.list.head.data).to eq("deep")
      expect(@bb.list.head.next_node.data).to eq("doo")
      expect(@bb.list.to_string).to eq("deep doo ditt")
    end

    it 'can count all the nodes in its list' do
      @bb.append("woo hoo shu")

      expect(@bb.list.to_string).to eq("deep doo ditt woo hoo shu")
      expect(@bb.count).to eq(6)
    end
  end

  describe "#play" do
    it 'can play the sound' do
      bb = BeatBox.new
      bb.append("beep boop beep boop bop bop bap")

      expect(bb.count).to eq(7)

      bb.play
    end
  end

  describe '#all ad #prepend' do
    before :each do
      @bb = BeatBox.new
      @bb.append("beep")
      @bb.append("Mississippi")
    end

    it 'can validate that only sounds in the approved list are added to a node' do
      expect(@bb.all).to eq("beep")
      @bb.play
    end

    it 'can add sounds to the beginning of the list and validate them' do
      @bb.prepend("tee tee tee mississippi")
      expect(@bb.all).to eq("tee tee tee beep")

      @bb.play
    end
  end
end
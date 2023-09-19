class BeatBox
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(sounds)
    sound_arr = sounds.split

    sound_arr.each do |sound|
      @list.append(sound)
    end
  end

  def count
    @list.count
  end

  def play
    `say -r 200 -v Boing "#{@list.to_string}"`
  end
end
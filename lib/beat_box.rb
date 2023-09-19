class BeatBox
  attr_reader :list
  def initialize
    @list = LinkedList.new
    @approved = ["beep", "boop", "bap", "bip", "bep", "peep", "poop", "pap", "pip", "deep", "doo", "ditt", "woo", "hoo", "shu", "bop", "tee"]
  end

  def append(sounds)
    sound_arr = sounds.split

    sound_arr.map do |sound|
      if @approved.include?(sound)
        @list.append(sound)
      end
    end
  end

  def prepend(sounds)
    sound_arr = sounds.split

    sound_arr.map do |sound|
      if @approved.include?(sound)
        @list.prepend(sound)
      end
    end
  end

  def count
    @list.count
  end

  def play
    `say -r 200 -v Boing "#{@list.to_string}"`
  end

  def all
    @list.to_string
  end
end
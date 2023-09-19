class BeatBox
  attr_reader :list
  def initialize
    @list = LinkedList.new
    @approved = ["beep", "boop", "bap", "bip", "bep", "peep", "poop", "pap", "pip", "deep", "doo", "ditt", "woo", "hoo", "shu", "bop", "tee"]
  end

  def append(data)
    type = "append"
    append_prepend(type, data)
  end

  def prepend(data)
    type = "prepend"
    append_prepend(type, data)
  end

  def append_prepend(type, data)
    sounds(data).map do |sound|
      if @approved.include?(sound)
        case type
        when "append"
          @list.append(sound)
        when "prepend"
          @list.prepend(sound)
        end
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

  def sounds(data)
    data.split
  end
end
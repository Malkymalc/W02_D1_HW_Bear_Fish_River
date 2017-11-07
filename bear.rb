class Bear
  attr_reader :name

  def initialize(bear_name)
    @name = bear_name
    @stomach = []
  end

  def food_count
    return @stomach.length
  end

  def roar(bear_talk)
    return bear_talk.upcase
  end

  def fish(river)
    fish = river.fish[0]
    @stomach << fish
    river.fish.delete(fish)
  end

end

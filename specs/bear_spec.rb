require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../bear.rb')
require_relative ('../fish.rb')
require_relative ('../river.rb')

class TestBear < MiniTest::Test
  def setup
    @bear_1 = Bear.new('Bobo')
    @fish_1 = Fish.new('Nadia Sardinie')
    @fish_2 = Fish.new('Alex Salmon')
    @fish_3 = Fish.new('Nicola the Sturgeon')
    river_arr = [@fish_1, @fish_2, @fish_3]
    @river_1 = River.new('Rio Grande', river_arr)
  end

  def test_get_name
    assert_equal('Bobo', @bear_1.name)
  end

  def test_roar
    assert_equal("HELLO", @bear_1.roar("Hello"))
  end

  def test_fish
    @bear_1.fish(@river_1)
    assert_equal(2, @river_1.fish.length)
    assert_equal(1, @bear_1.food_count)
  end

  def test_food_count__empty
    assert_equal(0, @bear_1.food_count)
  end

  def test_food_count__eaten
    @bear_1.fish(@river_1)
    @bear_1.fish(@river_1)
    @bear_1.fish(@river_1)
    assert_equal(3, @bear_1.food_count)
  end

end

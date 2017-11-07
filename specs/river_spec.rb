require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../bear.rb')
require_relative ('../fish.rb')
require_relative ('../river.rb')

class TestRiver < MiniTest::Test
  def setup
    @fish_1 = Fish.new('Nadia Sardinie')
    @fish_2 = Fish.new('Alex Salmon')
    @fish_3 = Fish.new('Nicola the Sturgeon')
    river_arr = [@fish_1, @fish_2, @fish_3]
    @river_1 = River.new('Rio Grande', river_arr)
  end

  def test_get_name
    assert_equal('Rio Grande', @river_1.name)
  end

  def test_get_fish
    assert_equal([@fish_1, @fish_2, @fish_3], @river_1.fish)
  end
end

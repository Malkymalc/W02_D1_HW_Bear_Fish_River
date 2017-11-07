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
  end
end

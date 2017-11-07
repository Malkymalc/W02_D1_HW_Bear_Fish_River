require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../bear.rb')
require_relative ('../fish.rb')
require_relative ('../river.rb')

class TestFish < MiniTest::Test
  def setup
    @fish_1 = Fish.new('Nadia Sardinie')
  end

  def test_get_name
    assert_equal('Nadia Sardinie', @fish_1.name)
  end
end

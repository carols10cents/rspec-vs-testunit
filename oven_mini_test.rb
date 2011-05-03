require 'minitest/autorun'
require_relative 'oven'

class OvenTest < MiniTest::Unit::TestCase
  def setup
    @oven = Oven.new
  end
  
  def test_temperature_increases
    original_temperature = @oven.temperature
    @oven.turn_on
    assert @oven.temperature > original_temperature
  end
end
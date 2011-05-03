require_relative 'oven'

describe Oven do
  before(:all) do
    @oven = Oven.new
  end
  
  it "increases the temperature when we turn it on" do
    original_temperature = @oven.temperature
    @oven.turn_on
    @oven.temperature.should > original_temperature
  end
end
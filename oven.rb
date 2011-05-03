class Oven
  attr_reader :temperature

  def initialize
    @temperature = 70
  end
  
  def turn_on
    @temperature += 20
  end
end
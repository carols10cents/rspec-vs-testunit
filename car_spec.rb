require_relative 'car'

describe Car do
  describe "with the default internal combustion engine" do
    before(:each) do
      @car = Car.new
    end
    
    context "#start" do      
      it "goes vrooom" do
        @car.start.should match(/v*r*o*m*!*/)
      end
      
      it "doesn't honk" do
        @car.start.should_not match(/beep/)
      end
    end
  end
  
  describe "with an electric engine" do
    before(:each) do
      @engine = double(:engine, :start_noise => "whirrr")
      @car = Car.new(@engine)
    end
    
    context "#start" do
      it "goes whirrr" do
        @car.start.should match(/whirrr/)
      end

      it "does not go vrooom" do
        @car.start.should_not match(/v*r*o*m*!*/)
      end
      
      it "doesn't honk" do
        @car.start.should_not match(/beep/)
      end
    end
  end
end
require_relative 'powerpoint_fixer'

describe PowerpointFixer do
  before(:all) do
    @powerpoint_fixer = PowerpointFixer.new
  end
  
  context "#repair_text" do
    before(:all) do
      slide_content = "We will create a versetile content-based conglomeration while persevering at exuding info-mediaries. Open-source local benchmarks will be networked via homogeneous info-mediaries. Optional zero administration arrays will avoid a polarised intangible system engine malfunction."
      @new_slide_content = @powerpoint_fixer.repair_text(slide_content)
    end

    it "splits a wall of text into bullets" do
      @new_slide_content.should match(/^- We/)
      @new_slide_content.should match(/mediaries\n- Open-source/)
    end
    
    it "corrects spelling" do
      @new_slide_content.should match(/versatile/)
      @new_slide_content.should_not match(/versetile/)
    end
  end
  
  context "#repair_style" do
    it "makes the colors readable for colorblind folks" do
      pending
    end
    
    it "uses only two fonts" do
      pending
    end
  end
end
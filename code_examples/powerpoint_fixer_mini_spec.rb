require_relative 'powerpoint_fixer'

require 'minitest/autorun'

describe PowerpointFixer do
  before do
    @powerpoint_fixer = PowerpointFixer.new
  end
  
  describe "#repair_text" do
    before do
      slide_content = "We will create a versetile content-based conglomeration while persevering at exuding info-mediaries. Open-source local benchmarks will be networked via homogeneous info-mediaries. Optional zero administration arrays will avoid a polarised intangible system engine malfunction."
      @new_slide_content = @powerpoint_fixer.repair_text(slide_content)
    end

    it "splits a wall of text into bullets" do
      @new_slide_content.must_match(/^- We/)
      @new_slide_content.must_match(/mediaries\n- Open-source/)
    end
    
    it "corrects spelling" do
      @new_slide_content.must_match(/versatile/)
      @new_slide_content.wont_match(/versetile/)
    end
  end
  
  describe "#repair_style" do
    it "makes the colors readable for colorblind folks" do
      skip
    end
    
    it "uses only two fonts" do
      skip
    end
  end
end
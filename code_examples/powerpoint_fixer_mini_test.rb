require_relative 'powerpoint_fixer'

require 'minitest/autorun'

class PowerpointFixerMiniTest < MiniTest::Unit::TestCase
  def setup
    @powerpoint_fixer = PowerpointFixer.new
  end
  
  def test_repair_text
    slide_content = "We will create a versetile content-based conglomeration while persevering at exuding info-mediaries. Open-source local benchmarks will be networked via homogeneous info-mediaries. Optional zero administration arrays will avoid a polarised intangible system engine malfunction."
    @new_slide_content = @powerpoint_fixer.repair_text(slide_content)

    #  split into bullets
    assert_match @new_slide_content, /^- We/
    assert_match @new_slide_content, /mediaries\n- Open-source/
    
    # if split into bullets fails, we won't check spelling correction... do we care?
    # does this indicate we're doing too much in one method?

    # spelling correction
    assert_match @new_slide_content, /versatile/
    assert_match @new_slide_content, /versetile/
  end
  
  def test_repair_style
    skip
  end
end

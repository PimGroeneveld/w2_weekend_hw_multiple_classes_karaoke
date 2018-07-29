require("minitest/autorun")
require("minitest/rg")

require_relative("../bar")

class BarTest < MiniTest::Test

  def setup
    @bar = Bar.new(250)
  end

  def test_has_till_contents
    assert_equal(250, @bar.bar_till)
  end


end

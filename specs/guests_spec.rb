require("minitest/autorun")
require("minitest/rg")

require("../guests")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Hans", "The Last Frontier Hotel")
    @guest2 = Guest.new("Pim", "Hotel California")
    @guest3 = Guest.new("Niamh", "Heartbreak Hotel")
  end

  def test_has_name()
    assert_equal("Niamh", @guest3.guest_name)
  end

end

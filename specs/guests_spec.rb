require("minitest/autorun")
require("minitest/rg")

require("../guests")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Hans", "The Last Frontier Hotel", 50)
    @guest2 = Guest.new("Pim", "Hotel California", 30)
    @guest3 = Guest.new("Niamh", "Heartbreak Hotel", 35)
  end

  def test_has_name()
    assert_equal("Niamh", @guest3.guest_name)
  end

  def test_has_fav_song
    assert_equal("Hotel California", @guest2.fav_song)
  end

  def test_has_wallet
    assert_equal(30, @guest2.wallet)
  end

end

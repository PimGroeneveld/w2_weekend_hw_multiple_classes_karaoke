require("minitest/autorun")
require("minitest/rg")

require_relative("../room")
require_relative("../guests")
require_relative("../songs")

class RoomTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Hotel California")
    @song2 = Song.new("Heartbreak Hotel")
    @song3 = Song.new("The Last Frontier Hotel")

    @guest1 = Guest.new("Hans", "The Last Frontier Hotel")
    @guest2 = Guest.new("Pim", "Hotel California")
    @guest3 = Guest.new("Niamh", "Heartbreak Hotel")

    @room1 = Room.new(14, 5)
    @room2 = Room.new(205, 2)

  end

  def test_has_room_number
    assert_equal(205, @room2.room_number)
  end

  def test_has_room_cap
    assert_equal(5, @room1.room_cap)
  end

  def test_room_starts_empty
    assert_equal(0, @room1.check_if_empty)
  end

  def test_room_has_no_song
    assert_equal(0, @room2.check_if_no_song)
  end

  def test_can_check_in_guest
    @room1.check_in_guest(@guest2)
    assert_equal("Pim", @guest2.guest_name)
  end

  def test_can_check_out_guest
    result = @room2.check_out_guest(@guest3.guest_name)
    assert_equal(0, result)
  end


end

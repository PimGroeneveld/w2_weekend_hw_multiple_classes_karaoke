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


end

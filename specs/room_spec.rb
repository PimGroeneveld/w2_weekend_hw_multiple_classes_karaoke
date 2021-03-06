require("minitest/autorun")
require("minitest/rg")
# require.("pry")

require_relative("../room")
require_relative("../guests")
require_relative("../songs")
require_relative("../bar")

class RoomTest < MiniTest::Test

  def setup()
    @song1 = Song.new("Hotel California")
    @song2 = Song.new("Heartbreak Hotel")
    @song3 = Song.new("The Last Frontier Hotel")

    @guest1 = Guest.new("Hans", "The Last Frontier Hotel", 50)
    @guest2 = Guest.new("Pim", "Hotel California", 30)
    @guest3 = Guest.new("Niamh", "Heartbreak Hotel", 35)

    @room1 = Room.new(14, 3, 7)
    @room2 = Room.new(205, 2, 12)

    @bar = Bar.new(250)

  end

  def test_has_room_number
    assert_equal(205, @room2.room_number)
  end

  def test_has_room_cap
    assert_equal(3, @room1.room_cap)
  end

  def test_has_entry_fee
    assert_equal(12, @room2.entry_fee)
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

  def test_can_add_song_to_room
    @room1.add_song(@song3)
    assert_equal("The Last Frontier Hotel", @song3.song_name)
  end

  # #extenstions
  def test_can_pay_entrance_fee
    assert_equal(18, @guest2.pay_entrance(@guest2, @room2))
  end

  def test_can_pay_entrance_fee
    result = @room2.pay_entrance(@guest2, @room2)
    assert_equal(18, result)
  end

  def test_fully_booked
    result = @room2.fully_booked(@guest1, @guest2, @guest3)
    assert_equal("Sorry, we are fully booked!", result)
  end

  #advanced extensions
  #this for some reason does not want to link to the .can_whoohoo method. Also for any further tests like the test_can_increase_till_by_entry_fee. Keep getting NoMethodError. Wonder why the first 10 tests work but then from this point on it doesnt cant find any methods anymore?
  def test_can_whoohoo_when_fav_song
    assert_equal("Yassss!", @guest2.can_whoohoo(@song1, @room1))
  end

  def test_can_increase_till_by_entry_fee
    assert_equal(262, @bar.increase_bar_till(@bar, @room2))
  end


end

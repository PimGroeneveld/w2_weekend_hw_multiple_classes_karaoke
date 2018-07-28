class Room

  attr_reader :room_number, :room_cap

  def initialize(room_number, room_cap)
    @room_number = room_number
    @room_cap = room_cap
    @guest_in_room = []
    @song_in_room = []

  end

  def check_if_empty()
    return @guest_in_room.count()
  end

  def check_if_no_song()
    return @song_in_room.count()
  end

  def check_in_guest(guest)
    return @guest_in_room << guest
  end

  def check_out_guest(guest)
    check_in_guest(guest)
    @guest_in_room.delete(guest)
    return check_if_empty
  end

end

class Room

  attr_reader :room_number, :room_cap

  def initialize(room_number, room_cap)
    @room_number = room_number
    @room_cap = room_cap
    @guest_in_room = []
    @song_in_room = []

  end

end

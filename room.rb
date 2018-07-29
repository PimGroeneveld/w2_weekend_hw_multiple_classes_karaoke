class Room

  attr_reader :room_number, :room_cap, :entry_fee

  def initialize(room_number, room_cap, entry_fee)
    @room_number = room_number
    @room_cap = room_cap
    @entry_fee = entry_fee
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

  def add_song(song)
    return @song_in_room << song
  end

  # #extensions

  def pay_entrance(guest, room)
     guest_money = guest.wallet
     guest_money -= @entry_fee
  end


  # def fully_booked(guest1, guest2, guest3)
  #   @guest_in_room << guest1
  #   @guest_in_room << guest2
  #   @guest_in_room << guest3
  #   if @guest_in_room > @room_cap
  #     p "Sorry, we are fully booked!"
  #   end
  # end


  # def whoo_fav_song(pref_song, room)
  #   add_song(room)
  #   for song in pref_song
  #     #still to complete
  #
  #   end
  # end


end

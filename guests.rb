class Guest

  attr_reader :guest_name, :fav_song, :wallet

  def initialize(guest_name, fav_song, wallet)
    @guest_name = guest_name
    @fav_song = fav_song
    @wallet = wallet
  end



end

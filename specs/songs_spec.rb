require("minitest/autorun")
require("minitest/rg")

require_relative("../songs")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Hotel California")
    @song2 = Song.new("Heartbreak Hotel")
    @song3 = Song.new("The Last Frontier Hotel")


  end

  def test_can_get_name()
    assert_equal("Hotel California", @song1.song_name)
  end



end

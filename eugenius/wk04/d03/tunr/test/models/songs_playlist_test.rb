# == Schema Information
#
# Table name: songs_playlists
#
#  id          :integer          not null, primary key
#  song_id     :integer
#  playlist_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class SongsPlaylistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

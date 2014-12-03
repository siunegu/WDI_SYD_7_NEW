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

class SongsPlaylist < ActiveRecord::Base
	belongs_to :songs
	belongs_to :playlist
end
